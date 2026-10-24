# heckeCosetMatrix_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:90f6ce77-6b1c-3d77-6805-3eabce8b5830",
  "kind": "theorem",
  "lexical_name": "heckeCosetMatrix_det",
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
  "slug": "heckecosetmatrix-det--ce266654fd397e4e01e884df",
  "source": {
    "blob": "373d5a23f7f951122b8274b4ed13a90ba9e0fcda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 154,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Varianta904b3828295865259010df8da4e5804184e5e7255ffb8764b9bc5169dc21c83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce266654fd397e4e01e884df18d79da2e8e5d19726a3dc9a1357babe9f392a3a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Varianta904b3828295865259010df8da4e5804184e5e7255ffb8764b9bc5169dc21c83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90f6ce77-6b1c-3d77-6805-3eabce8b5830`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heckeCosetMatrix_det {n : Nat} {coset : HeckeCosetV1}
    (member : coset ∈ heckeCosets n) :
    coset.matrix.det = Int.ofNat n := by
  rcases List.mem_flatMap.mp member with ⟨d, hd, hcoset⟩
  rcases List.mem_map.mp hcoset with ⟨b, hb, rfl⟩
  have hdivides : d ∣ n := (positiveDivisorsAscending_sound hd).2
  have hdetNat : n / d * d = n := Nat.div_mul_cancel hdivides
  simp only [makeHeckeCosetV1, HeckeMatrixV1.det]
  norm_num
  exact_mod_cast hdetNat

/-- Exact divisor sum used by the count theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Varianta904b3828295865259010df8da4e5804184e5e7255ffb8764b9bc5169dc21c83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Varianta904b3828295865259010df8da4e5804184e5e7255ffb8764b9bc5169dc21c83.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `373d5a23f7f951122b8274b4ed13a90ba9e0fcda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
