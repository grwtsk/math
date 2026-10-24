# Algebra.FiniteType.exists_fgAlgCatSkeleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9ec57a4bd87af95d314aa6a02d0bc7966af4bf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d61fd4dd-1ad6-4a0c-82f5-83e7ac741698",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d8215fb-a20d-8eb6-e78e-f02da982b023",
  "kind": "lemma",
  "lexical_name": "Algebra.FiniteType.exists_fgAlgCatSkeleton",
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
  "slug": "algebra-finitetype-exists-fgalgcatskeleton--15141218241eb1dc767f3a37",
  "source": {
    "blob": "e9ec57a4bd87af95d314aa6a02d0bc7966af4bf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 44,
    "path": "GRWTSK/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15141218241eb1dc767f3a379eda0da1506035efd1f0211e0e50f0e8615354db",
  "verification": {
    "reference": "docs/verification/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d8215fb-a20d-8eb6-e78e-f02da982b023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.FiniteType.exists_fgAlgCatSkeleton (A : Type v) [CommRing A] [Algebra R A]
    [h : Algebra.FiniteType R A] :
    ∃ (P : FGAlgCatSkeleton R), Nonempty (A ≃ₐ[R] P.eval.obj) := by
  obtain ⟨n, f, hf⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.mp h
  exact ⟨⟨n, RingHom.ker f⟩, ⟨(Ideal.quotientKerAlgEquivOfSurjective hf).symm⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FiniteType/Variant7ef6836d4efcbbe856a2ce5521f49af2f1f5197b146628facf68f096e65eb564.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9ec57a4bd87af95d314aa6a02d0bc7966af4bf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
