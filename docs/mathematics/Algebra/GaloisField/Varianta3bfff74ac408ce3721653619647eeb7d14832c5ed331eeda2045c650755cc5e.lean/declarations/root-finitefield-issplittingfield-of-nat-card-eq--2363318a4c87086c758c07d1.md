# _root_.FiniteField.isSplittingField_of_nat_card_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23bf9d35893133026a646aa2677f4f87dd7b1a29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a3/a3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9762e8b4-aed5-2716-b95a-7aacb2dc6d31",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da106b4b-5845-a38b-89ea-bc8712fa5dbe",
  "kind": "theorem",
  "lexical_name": "_root_.FiniteField.isSplittingField_of_nat_card_eq",
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
  "slug": "root-finitefield-issplittingfield-of-nat-card-eq--2363318a4c87086c758c07d1",
  "source": {
    "blob": "23bf9d35893133026a646aa2677f4f87dd7b1a29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 197,
    "path": "GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2363318a4c87086c758c07d1e0289a5ea0d3ab513419e6b81fd45c3f45ebdbad",
  "verification": {
    "reference": "docs/verification/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da106b4b-5845-a38b-89ea-bc8712fa5dbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.FiniteField.isSplittingField_of_nat_card_eq (h : Nat.card K = p ^ n) :
    IsSplittingField (ZMod p) K (X ^ p ^ n - X) := by
  haveI : Finite K := (Nat.card_pos_iff.mp (h ▸ pow_pos h_prime.1.pos n)).2
  haveI : Fintype K := Fintype.ofFinite K
  rw [← h, Nat.card_eq_fintype_card]
  exact FiniteField.isSplittingField_sub K (ZMod p)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaloisField/Varianta3bfff74ac408ce3721653619647eeb7d14832c5ed331eeda2045c650755cc5e.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23bf9d35893133026a646aa2677f4f87dd7b1a29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
