# map_radical_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d3597ae968d410972c69f585a2d41b79585ccca4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1141,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6cde2f875c2c8b9ea1aa57cf3aa654d5fd80981349de49f28556c77b56d9c11.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:610394d9-19ec-60ad-a1dc-fc5726559053",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a16613e-7905-138c-d683-6d482bfba9f7",
  "kind": "theorem",
  "lexical_name": "map_radical_of_surjective",
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
  "slug": "map-radical-of-surjective--4d62c10c78186930d505cfaf",
  "source": {
    "blob": "d3597ae968d410972c69f585a2d41b79585ccca4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1165,
    "line": 1141,
    "path": "GRWTSK/Algebra/Maps/Varianta6cde2f875c2c8b9ea1aa57cf3aa654d5fd80981349de49f28556c77b56d9c11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d62c10c78186930d505cfaf87fe2d862e52623142e7b065703cf232edc0545f",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Varianta6cde2f875c2c8b9ea1aa57cf3aa654d5fd80981349de49f28556c77b56d9c11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a16613e-7905-138c-d683-6d482bfba9f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1141–1165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_radical_of_surjective {f : R →+* S} (hf : Function.Surjective f) {I : Ideal R}
    (h : RingHom.ker f ≤ I) : map f I.radical = (map f I).radical := by
  rw [radical_eq_sInf, radical_eq_sInf]
  have : ∀ J ∈ {J : Ideal R | I ≤ J ∧ J.IsPrime}, RingHom.ker f ≤ J := fun J hJ => h.trans hJ.left
  convert! map_sInf hf this
  ext j
  constructor
  · rintro ⟨hj, hj'⟩
    have : j.IsPrime := hj'
    exact
      ⟨comap f j, ⟨⟨map_le_iff_le_comap.1 hj, comap_isPrime f j⟩, map_comap_of_surjective f hf j⟩⟩
  · rintro ⟨J, ⟨hJ, hJ'⟩⟩
    have : J.IsPrime := hJ.right
    exact ⟨hJ' ▸ map_mono hJ.left, hJ' ▸ map_isPrime_of_surjective hf (le_trans h hJ.left)⟩

end CommRing

end Ideal

namespace RingHom

variable {A B C : Type*} [Ring A] [Ring B] [Ring C]
variable (f : A →+* B) (f_inv : B → A)

/-- Auxiliary definition used to define `liftOfRightInverse` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Varianta6cde2f875c2c8b9ea1aa57cf3aa654d5fd80981349de49f28556c77b56d9c11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Varianta6cde2f875c2c8b9ea1aa57cf3aa654d5fd80981349de49f28556c77b56d9c11.lean#L1141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3597ae968d410972c69f585a2d41b79585ccca4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
