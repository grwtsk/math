# pderiv_sumRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fbb5036-88a4-37c1-6733-4d681fc61fd8",
  "kind": "lemma",
  "lexical_name": "pderiv_sumRingEquiv",
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
  "slug": "pderiv-sumringequiv--04556f9385bee5f71d107b1a",
  "source": {
    "blob": "f9452b322d5a50365a3b1fc3aa8048b292af2f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 176,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04556f9385bee5f71d107b1a33aabd8ad3fc414c30d52a169ca65e8443f06807",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fbb5036-88a4-37c1-6733-4d681fc61fd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pderiv_sumRingEquiv {σ ι} (p i) :
    (sumRingEquiv R σ ι p).pderiv i = sumRingEquiv R σ ι (p.pderiv (.inl i)) := by
  classical
  induction p using MvPolynomial.induction_on with
  | C a => simp
  | add p q _ _ => simp_all
  | mul_X p n _ => cases n <;> simp_all [pderiv_X, Pi.single_apply, apply_ite]

@[deprecated (since := "2026-06-18")] alias pderiv_sumToIter := pderiv_sumRingEquiv

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PDeriv/Variant2f420b5572f11340485e2bf59f758c913095185dcfb981ff861079ce620bfc58.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9452b322d5a50365a3b1fc3aa8048b292af2f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
