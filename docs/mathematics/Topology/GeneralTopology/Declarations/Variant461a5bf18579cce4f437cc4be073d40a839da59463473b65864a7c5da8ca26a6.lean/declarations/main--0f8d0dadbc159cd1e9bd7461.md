# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa35e11746ed394a9c271f664112bc934ddc81f44d37a5836343d63df77971ee",
  "kind": "def",
  "lexical_name": "main",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "main--0f8d0dadbc159cd1e9bd7461",
  "source": {
    "blob": "330060c78b025a0b0976110497188d3f45d70df5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 20,
    "path": "GRWTSK/Topology/GeneralTopology/Declarations/Variant461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f8d0dadbc159cd1e9bd74616ba3100ef587163e70bc953e6f593487e1bba987",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Declarations/Variant461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa35e11746ed394a9c271f664112bc934ddc81f44d37a5836343d63df77971ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def main():
    parser = argparse.ArgumentParser(
        description="Print Mathlib modules in topological order.",
    )
    parser.add_argument(
        "--reverse", action="store_true",
        help="Leaves first (if A imports B, A appears before B)",
    )
    args = parser.parse_args()

    dag = DAG.from_directories(Path("."))
    levels = dag.levels_backward()
    if not args.reverse:
        levels = levels[::-1]
    sorted_modules = [m for level in levels for m in level]

    # Optionally filter to modules listed on stdin.
    if not sys.stdin.isatty():
        input_modules = set()
        for line in sys.stdin:
            line = line.strip()
            if not line:
                continue
            if line.endswith(".lean"):
                # Convert file path (Mathlib/Foo/Bar.lean) to module name.
                input_modules.add(".".join(Path(line).with_suffix("").parts))
            else:
                input_modules.add(line)
        if input_modules:
            sorted_modules = [m for m in sorted_modules if m in input_modules]

    for module in sorted_modules:
        print(module)


if __name__ == "__main__":
    main()
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Declarations/Variant461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Declarations/Variant461a5bf18579cce4f437cc4be073d40a839da59463473b65864a7c5da8ca26a6.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `330060c78b025a0b0976110497188d3f45d70df5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
