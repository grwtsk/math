# Ideal.height_le_iff_covBy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ff202cf852e6f58ca97e69df907b3de90b408e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 342,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:691772e0-0a4f-5030-b783-a6746e39a095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92667ddc-4491-5281-4ad4-7f7f1285d6d3",
  "kind": "lemma",
  "lexical_name": "Ideal.height_le_iff_covBy",
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
  "slug": "ideal-height-le-iff-covby--0408eaf94f6320b1936e1ecd",
  "source": {
    "blob": "2ff202cf852e6f58ca97e69df907b3de90b408e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 342,
    "path": "GRWTSK/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0408eaf94f6320b1936e1ecdaf5b425384ab8e11c4fe40cecc4e72f557d25461",
  "verification": {
    "reference": "docs/verification/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92667ddc-4491-5281-4ad4-7f7f1285d6d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Ideal.height_le_iff_covBy {p : Ideal R} {n : ℕ} [p.IsPrime] [IsNoetherianRing R] :
    p.height ≤ n ↔ ∀ q : Ideal R, q.IsPrime → q < p →
      (∀ q' : Ideal R, q'.IsPrime → q < q' → ¬ q' < p) → q.height < n := by
  rw [Ideal.height_le_iff]
  constructor
  · intro H q hq e _
    exact H q hq e
  · intro H q hq e
    obtain ⟨⟨x, hx⟩, hqx, hxp⟩ :=
      @exists_le_covBy_of_lt { I : Ideal R // I.IsPrime } ⟨q, hq⟩ ⟨p, ‹_›⟩ _ _ e
    exact (Ideal.height_mono hqx).trans_lt
      (H _ hx hxp.1 (fun I hI e ↦ hxp.2 (show Subtype.mk x hx < ⟨I, hI⟩ from e)))

/-- Use `RingEquiv.height_comap` instead, which does not assume `IsPrime`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Height/Variante5b06d1966572e7185226c0290c56b1633388901c74309fd90ad6e727276dfb4.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff202cf852e6f58ca97e69df907b3de90b408e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
