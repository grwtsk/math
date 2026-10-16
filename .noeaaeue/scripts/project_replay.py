"""Replay the manifest-bound GRWTSK import closure in dependency order."""
import re


def compile_project_closure(root, manifest_files, run, module="GRWTSK"):
    completed, active, order = set(), set(), []

    def visit(name):
        if name in active:
            raise RuntimeError("cyclic project import: " + name)
        if name in completed:
            return
        relative = name.replace(".", "/") + ".lean"
        source = root / relative
        if relative not in manifest_files or not source.is_file() or source.is_symlink():
            raise RuntimeError("invalidated project import: " + relative)
        active.add(name)
        for line in source.read_text().splitlines():
            match = re.match(r"^\s*(?:public\s+)?import\s+(.+)$", line)
            if match:
                for dependency in match[1].split("--", 1)[0].split():
                    if dependency == "GRWTSK" or dependency.startswith("GRWTSK."):
                        visit(dependency)
        active.remove(name)
        completed.add(name)
        order.append(relative)
        run("compile-" + name, relative)

    visit(module)
    return order
