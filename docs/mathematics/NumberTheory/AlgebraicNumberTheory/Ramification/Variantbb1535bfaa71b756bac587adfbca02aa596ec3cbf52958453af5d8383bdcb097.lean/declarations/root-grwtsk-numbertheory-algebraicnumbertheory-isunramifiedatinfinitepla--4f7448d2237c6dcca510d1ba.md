# _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.IsUnramifiedAtInfinitePlaces.Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.NumberField.ComplexEmbedding.IsConj.coe_stabilizer_mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:832550a0-9ec8-694c-88a0-3885d5d3b802",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.IsUnramifiedAtInfinitePlaces.Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.NumberField.ComplexEmbedding.IsConj.coe_stabilizer_mk",
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
  "slug": "root-grwtsk-numbertheory-algebraicnumbertheory-isunramifiedatinfinitepla--4f7448d2237c6dcca510d1ba",
  "source": {
    "blob": "86f95a1669795aaa94cc8c27a51437b1c637d46a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 377,
    "line": 369,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f7448d2237c6dcca510d1ba17f8f3661ef20c32a2522eb2368f8ad717756933",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:832550a0-9ec8-694c-88a0-3885d5d3b802`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–377.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.NumberTheory.AlgebraicNumberTheory.IsUnramifiedAtInfinitePlaces.Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.NumberField.ComplexEmbedding.IsConj.coe_stabilizer_mk
    {φ : K →+* ℂ} (h : ComplexEmbedding.IsConj φ σ) :
    (Stab (mk φ) : Set Gal(K/k)) = {1, σ} := by
  ext
  rw [SetLike.mem_coe, mem_stabilizer_mk_iff, Set.mem_insert_iff, Set.mem_singleton_iff,
    ← h.ext_iff, eq_comm (a := σ)]

variable (k w)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variantbb1535bfaa71b756bac587adfbca02aa596ec3cbf52958453af5d8383bdcb097.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86f95a1669795aaa94cc8c27a51437b1c637d46a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
