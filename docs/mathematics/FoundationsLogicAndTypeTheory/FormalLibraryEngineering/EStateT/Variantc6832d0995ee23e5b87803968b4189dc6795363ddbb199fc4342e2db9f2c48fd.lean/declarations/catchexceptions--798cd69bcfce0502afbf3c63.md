# catchExceptions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:127085da56235b1a9be1cb03f23f5db20f35ac6647db9fab436e71ce0112ff0c",
  "kind": "def",
  "lexical_name": "catchExceptions",
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
  "slug": "catchexceptions--798cd69bcfce0502afbf3c63",
  "source": {
    "blob": "bf173ce44427d3cb97532a55645876d2a113609f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 151,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:798cd69bcfce0502afbf3c6385a67d36e407b6b572139cd368aa259f11b37a6f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:127085da56235b1a9be1cb03f23f5db20f35ac6647db9fab436e71ce0112ff0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def catchExceptions {ε σ α : Type u}
  [Monad m] (x : EStateT ε σ m α) (h : ε → StateT σ m α)
: StateT σ m α := fun s => do
  match (← x s) with
  | .ok a s => return (a, s)
  | .error e s => StateT.run (h e) s

/-- Lift the `m` monad into the `EStateT ε σ m` monad transformer. -/
@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EStateT/Variantc6832d0995ee23e5b87803968b4189dc6795363ddbb199fc4342e2db9f2c48fd.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf173ce44427d3cb97532a55645876d2a113609f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
