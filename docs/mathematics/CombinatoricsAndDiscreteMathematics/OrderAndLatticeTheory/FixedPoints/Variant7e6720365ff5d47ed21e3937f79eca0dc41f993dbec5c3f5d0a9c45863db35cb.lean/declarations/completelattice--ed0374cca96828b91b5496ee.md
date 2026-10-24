# completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e94c18d266daf83df2cf5ce21afe71b011ba631d1f306bd57e7f7c4bbc667a9a",
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
  "slug": "completelattice--ed0374cca96828b91b5496ee",
  "source": {
    "blob": "57a974b23c7d71adf6cfb396a4cb1062f1dbb8ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 267,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed0374cca96828b91b5496ee76c7292152802587bef6e5263606a8ab303ab722",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e94c18d266daf83df2cf5ce21afe71b011ba631d1f306bd57e7f7c4bbc667a9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–280.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FixedPoints/Variant7e6720365ff5d47ed21e3937f79eca0dc41f993dbec5c3f5d0a9c45863db35cb.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57a974b23c7d71adf6cfb396a4cb1062f1dbb8ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
