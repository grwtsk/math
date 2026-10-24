# IsInternal.addSubmonoid_iSup_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dea14888-505a-10f0-4dcd-d1b40189d87b",
  "kind": "theorem",
  "lexical_name": "IsInternal.addSubmonoid_iSup_eq_top",
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
  "slug": "isinternal-addsubmonoid-isup-eq-top--b48dd208d2b8ee47cd37f08e",
  "source": {
    "blob": "7d075b737ad1628597fd61a6a8f94ea8be0d667a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 400,
    "path": "GRWTSK/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b48dd208d2b8ee47cd37f08ec648f702fbd6f7992dc24649f2b52b51f9b35693",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dea14888-505a-10f0-4dcd-d1b40189d87b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsInternal.addSubmonoid_iSup_eq_top {M : Type*} [DecidableEq ι] [AddCommMonoid M]
    (A : ι → AddSubmonoid M) (h : IsInternal A) : iSup A = ⊤ := by
  rw [AddSubmonoid.iSup_eq_mrange_dfinsuppSumAddHom, AddMonoidHom.mrange_eq_top]
  exact Function.Bijective.surjective h

variable {M S : Type*} [AddCommMonoid M] [SetLike S M] [AddSubmonoidClass S M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantac445cc93902648f7e1cac1f6ec50a5a4cb53f1ec3b92bcb5010b76847bb0983.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d075b737ad1628597fd61a6a8f94ea8be0d667a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
