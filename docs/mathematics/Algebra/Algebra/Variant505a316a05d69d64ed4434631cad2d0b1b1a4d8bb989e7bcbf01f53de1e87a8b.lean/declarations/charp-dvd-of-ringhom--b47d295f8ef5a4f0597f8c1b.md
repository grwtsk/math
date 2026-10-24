# CharP.dvd_of_ringHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26f0202482ec90c8d01b179b9bf0306e18791bcf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a004a36d-1cc0-08d5-051c-4b15f606fa00",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b2994efb-a031-7d24-bdf5-163890d7f0ef",
  "kind": "theorem",
  "lexical_name": "CharP.dvd_of_ringHom",
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
  "slug": "charp-dvd-of-ringhom--b47d295f8ef5a4f0597f8c1b",
  "source": {
    "blob": "26f0202482ec90c8d01b179b9bf0306e18791bcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 32,
    "path": "GRWTSK/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b47d295f8ef5a4f0597f8c1ba7de4456adb479c7c66f94f0e7acdc8e0c2f899d",
  "verification": {
    "reference": "docs/verification/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b2994efb-a031-7d24-bdf5-163890d7f0ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CharP.dvd_of_ringHom {R A : Type*} [NonAssocSemiring R] [NonAssocSemiring A]
    (f : R →+* A) (p q : ℕ) [CharP R p] [CharP A q] : q ∣ p := by
  refine (CharP.cast_eq_zero_iff A q p).mp ?_
  rw [← map_natCast f p, CharP.cast_eq_zero, map_zero]

/-- Given `R →+* A`, where `R` is a domain with `char R > 0`, then `char A = char R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Algebra/Variant505a316a05d69d64ed4434631cad2d0b1b1a4d8bb989e7bcbf01f53de1e87a8b.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26f0202482ec90c8d01b179b9bf0306e18791bcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
