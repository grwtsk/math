# positiveStrictTailEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:989a36c61a1510b89d2756ee150bf1a7ba7606a5a8ef4d48acf7b1b064d0ff52",
  "kind": "def",
  "lexical_name": "positiveStrictTailEquiv",
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
  "slug": "positivestricttailequiv--7bc0bc31ee5c4ad44a5525cd",
  "source": {
    "blob": "939193eb909504de26304c17db9b6d7e48d59ca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 81,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bc0bc31ee5c4ad44a5525cd0b2089ac993f93d4a102618b5188fe1d4f798c66",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:989a36c61a1510b89d2756ee150bf1a7ba7606a5a8ef4d48acf7b1b064d0ff52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def positiveStrictTailEquiv (T : ℝ) (hT : 0 ≤ T) :
    {o : PositiveOccurrence // T < positiveOrdinate o} ≃
      {o : ZeroOccurrence // T < (shiftedValue o).im} where
  toFun o := ⟨o.val.val, o.property⟩
  invFun o := ⟨⟨o.val, hT.trans_lt o.property⟩, o.property⟩
  left_inv o := by rcases o with ⟨⟨p, hp⟩, ht⟩; rfl
  right_inv o := by rcases o with ⟨p, hp⟩; rfl

/-- Strict indicator transport requires no rearrangement or summability premise;
it is the exact subtype/bijection transport of the same actual summands. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CountKernel/Variantd87823cdd5d9cd3ccc9705c4bad4e03bdf5f50acd85f478d88359981006051b8.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939193eb909504de26304c17db9b6d7e48d59ca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
