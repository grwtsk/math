# completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c9eb1960ac1773417fa83b9a4f09c236296382b0750b0b019553380c33f3924",
  "kind": "instance",
  "lexical_name": "completeLattice",
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
  "slug": "completelattice--cc4f2edbdc717abce0ebadbf",
  "source": {
    "blob": "7ff357b7e36173c86dcf4ad7243eff04ce571983",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 259,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc4f2edbdc717abce0ebadbf35ca96e6a2cd16ff407543d4716644d4d18b3cb0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c9eb1960ac1773417fa83b9a4f09c236296382b0750b0b019553380c33f3924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance completeLattice : CompleteLattice (fixedPoints f) where
  __ := inferInstanceAs (SemilatticeInf (fixedPoints f))
  __ := inferInstanceAs (SemilatticeSup (fixedPoints f))
  __ := inferInstanceAs (CompleteSemilatticeInf (fixedPoints f))
  __ := inferInstanceAs (CompleteSemilatticeSup (fixedPoints f))
  top := ⟨f.gfp, f.isFixedPt_gfp⟩
  bot := ⟨f.lfp, f.isFixedPt_lfp⟩
  le_top x := f.le_gfp x.2.ge
  bot_le x := f.lfp_le x.2.le

open OmegaCompletePartialOrder fixedPoints

/-- **Kleene's fixed point Theorem**: The least fixed point in a complete lattice is
the supremum of iterating a function on bottom arbitrary often. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant745985fcaa73daf68dd7c9985793a54cf858b2bc31c9840fa8601b2bf3754b7d.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7ff357b7e36173c86dcf4ad7243eff04ce571983` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
