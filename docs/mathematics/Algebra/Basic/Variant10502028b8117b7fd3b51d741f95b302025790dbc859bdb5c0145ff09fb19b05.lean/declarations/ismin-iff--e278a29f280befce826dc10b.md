# isMin_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb032d6c3d4d4149fb69fb59f888cdec7225e4a2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 419,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86ee1bac-497e-164f-2ec0-db9cb1e9aec9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:96a22f80-f038-8300-3c92-5c940b8ad96c",
  "kind": "lemma",
  "lexical_name": "isMin_iff",
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
  "slug": "ismin-iff--e278a29f280befce826dc10b",
  "source": {
    "blob": "bb032d6c3d4d4149fb69fb59f888cdec7225e4a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 419,
    "path": "GRWTSK/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e278a29f280befce826dc10be6fef96b8d42fc9cc05d5a398cd777bdefd6770e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96a22f80-f038-8300-3c92-5c940b8ad96c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 419–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMin_iff {x : PrimeSpectrum R} :
    IsMin x ↔ x.asIdeal ∈ minimalPrimes R := by
  change IsMin _ ↔ Minimal (fun q : Ideal R ↦ q.IsPrime ∧ ⊥ ≤ q) _
  simp only [IsMin, Minimal, x.2, bot_le, and_self, and_true, true_and]
  exact ⟨fun H y hy e ↦ @H ⟨y, hy⟩ e, fun H y e ↦ H y.2 e⟩

end Order

section Noetherian

open Submodule

variable (R : Type u) [CommRing R] [IsNoetherianRing R]
variable {A : Type u} [CommRing A] [IsDomain A] [IsNoetherianRing A]

/-- In a Noetherian ring, every ideal contains a product of prime ideals
([samuel1967, § 3.3, Lemma 3]). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant10502028b8117b7fd3b51d741f95b302025790dbc859bdb5c0145ff09fb19b05.lean#L419).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb032d6c3d4d4149fb69fb59f888cdec7225e4a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
