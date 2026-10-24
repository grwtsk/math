# FermatLastTheoremWith'.fermatLastTheoremWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d63cf09e4eb2025afc11612d679ad45f2e42854c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0c63c73-7abf-58c9-20bf-7ad45c732505",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5cf2ff8a-ea74-85ff-b66a-9029ba071fbd",
  "kind": "lemma",
  "lexical_name": "FermatLastTheoremWith'.fermatLastTheoremWith",
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
  "slug": "fermatlasttheoremwith-fermatlasttheoremwith--ab5006dfc8607af2cb959bd9",
  "source": {
    "blob": "d63cf09e4eb2025afc11612d679ad45f2e42854c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 180,
    "path": "GRWTSK/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab5006dfc8607af2cb959bd9e330871feaa88282dbf385df6cae74d35e502e00",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cf2ff8a-ea74-85ff-b66a-9029ba071fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma FermatLastTheoremWith'.fermatLastTheoremWith {R : Type*} [CommSemiring R] [IsDomain R]
    {n : ℕ} (h : FermatLastTheoremWith' R n)
    (hn : ∀ a b c : R, IsUnit a → IsUnit b → IsUnit c → a ^ n + b ^ n ≠ c ^ n) :
    FermatLastTheoremWith R n := by
  intro a b c ha hb hc heq
  rcases h a b c ha hb hc heq with ⟨d, a', b', c', ⟨rfl, rfl, rfl⟩, ⟨ua, ub, uc⟩⟩
  rw [mul_pow, mul_pow, mul_pow, ← add_mul] at heq
  exact hn _ _ _ ua ub uc <| mul_right_cancel₀ (pow_ne_zero _ (right_ne_zero_of_mul ha)) heq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variantc5cf53bed665ba3655575026ddba0594b7af84f9d56bc5e6e7943aac946a1a2a.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d63cf09e4eb2025afc11612d679ad45f2e42854c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
