"""Physical locations for preserved pre-cleanup process path identities.

This adapter relocates filesystem access only. It does not rewrite stored records,
change their hashes, or confer fresh source/proof acceptance.
"""
from pathlib import Path, PurePosixPath

_PROCESS_ROOTS = frozenset({'scripts', 'tests', 'tools', 'checks', 'cache', 'evidence',
    'examples', 'asbn-p04', 'euler-p04-rh', 'hssc-p04', 'ppnc-p04', '.local'})
_REFERENCE_FILES = frozenset({'content-cache.md', 'documentation-history.md',
    'documentation-layout-controls.json', 'documentation-layout.json',
    'documentation-review-controls.json', 'lean-consolidation-report.md',
    'legacy-inventory.json', 'reconstruction-recipes.json', 'reconstruction.md',
    'repository-artifact-catalog.json', 'rigor-and-reconstruction-report.md',
    'source-layout.md', 'source-verification.md', 'trust-boundary.md',
    'verification-interfaces.md'})


def relocated_name(relative):
    """Map an old process path to its present path, preserving its logical ID."""
    name = str(relative)
    parts = PurePosixPath(name).parts
    if not name or name.startswith('/') or any(p in {'', '.', '..', '.git'} for p in name.split('/')):
        raise ValueError('noncanonical repository path')
    if parts[0] == '.noeaaeue':
        return name
    if parts[0] in _PROCESS_ROOTS:
        return '.noeaaeue/' + name
    if name == 'docs/math-layout.json':
        return '.noeaaeue/documentation/math-layout.json'
    if len(parts) >= 2 and parts[:2] in {('docs', 'explanation'), ('docs', 'how-to')}:
        return '.noeaaeue/documentation/' + '/'.join(parts[1:])
    if len(parts) >= 3 and parts[:2] == ('docs', 'reference') and (
            parts[2] in _REFERENCE_FILES or parts[2] in {'rules', 'taxonomy'}):
        return '.noeaaeue/documentation/' + '/'.join(parts[1:])
    return name


def repository_path(root, relative):
    return Path(root) / relocated_name(relative)


def original_name(relative):
    """Recover the old origin used to interpret unchanged historical links."""
    name = str(relative)
    if name.startswith('.noeaaeue/documentation/'):
        return 'docs/' + name.removeprefix('.noeaaeue/documentation/')
    if name.startswith('.noeaaeue/') and name.split('/')[1] in _PROCESS_ROOTS:
        return name.removeprefix('.noeaaeue/')
    return name
