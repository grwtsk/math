# FormalMultilinearSeries.hasFiniteFPowerSeriesOnBall_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3c3e142d2e567652b9e04f535b76892a0f2fa7c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 318,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/abb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a8c1cde-cc0d-e3da-c4ed-0a2b015858e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ce1749b-5981-bf3a-34e9-68590ed2563d",
  "kind": "theorem",
  "lexical_name": "FormalMultilinearSeries.hasFiniteFPowerSeriesOnBall_of_finite",
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
  "slug": "formalmultilinearseries-hasfinitefpowerseriesonball-of-finite--4c5bea448dda3cc5a63ff631",
  "source": {
    "blob": "3c3e142d2e567652b9e04f535b76892a0f2fa7c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 318,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c5bea448dda3cc5a63ff63139ccff86665af45669d5c4663cfb0e795538c12f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ce1749b-5981-bf3a-34e9-68590ed2563d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem FormalMultilinearSeries.hasFiniteFPowerSeriesOnBall_of_finite
    (p : FormalMultilinearSeries 𝕜 E F) {n : ℕ} (hn : ∀ m, n ≤ m → p m = 0) :
    HasFiniteFPowerSeriesOnBall p.sum p 0 n ⊤ where
  r_le := by rw [radius_eq_top_of_forall_image_add_eq_zero p n fun _ => hn _ (Nat.le_add_left _ _)]
  r_pos := zero_lt_top
  finite := hn
  hasSum {y} _ := by rw [zero_add]; exact p.hasSum_of_finite hn y

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantabb58af8798172ec0e8f31994e0c435437dc242afc7ba2bb8da58178881cf1b9.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c3e142d2e567652b9e04f535b76892a0f2fa7c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
