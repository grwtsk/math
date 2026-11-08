# Reproducible Lean source inspection

[Technical guides](README.md) · [Documentation index](../index.md)

The [toolchain](../../lean-toolchain) pins Lean 4.34.1;
[Lake](../../lakefile.toml) and [the manifest](../../lake-manifest.json)
pin the dependency environment. From a configured checkout:

```sh
git rev-parse HEAD
lake build +GRWTSK.NumberTheory.FirstPrime:olean
```

An optional related target is
`lake build +GRWTSK.NumberTheory.MultiplicativeNumberTheory.LeastPrime:olean`.
Read [FirstPrime.lean](../../GRWTSK/NumberTheory/FirstPrime.lean) and
[LeastPrime.lean](../../GRWTSK/NumberTheory/MultiplicativeNumberTheory/LeastPrime.lean)
for the exact source selected by these targets.
These are example commands, not reports of executed builds. Root
`lake build` may require large resources and covers a different scope.
Elaboration, kernel replay, transitive axiom review and correspondence to
external mathematics require separate source-bound evidence.
[Upstream adapters](../adapters/README.md) remain isolated.
