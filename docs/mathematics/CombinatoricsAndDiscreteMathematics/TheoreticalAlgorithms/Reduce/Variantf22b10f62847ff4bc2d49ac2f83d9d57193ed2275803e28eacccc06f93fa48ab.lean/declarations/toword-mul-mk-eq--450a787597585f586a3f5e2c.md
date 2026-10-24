# toWord_mul_mk_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7e43462-08b0-ec06-6ed1-212ae60e0963",
  "kind": "theorem",
  "lexical_name": "toWord_mul_mk_eq",
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
  "slug": "toword-mul-mk-eq--450a787597585f586a3f5e2c",
  "source": {
    "blob": "46b4ad44d965aca62a32c9060981cf60feb8e947",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 372,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:450a787597585f586a3f5e2c41731574bee2f2d9aa4542cfd918304041debb8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7e43462-08b0-ec06-6ed1-212ae60e0963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 372–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toWord_mul_mk_eq (a : α) (b : Bool) (x : FreeGroup α) :
    (x * mk [⟨a, b⟩]).toWord =
      if x.toWord.getLast? = some ⟨a, !b⟩ then x.toWord.dropLast else x.toWord.concat ⟨a, b⟩ := by
  ext
  rw [show x * mk [⟨a, b⟩] = ((mk [⟨a, b⟩])⁻¹ * x⁻¹)⁻¹ by simp, toWord_inv]
  simp [invRev, toWord_mk_mul_eq]
  split_ifs <;> simp <;> grind

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Reduce/Variantf22b10f62847ff4bc2d49ac2f83d9d57193ed2275803e28eacccc06f93fa48ab.lean#L372).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46b4ad44d965aca62a32c9060981cf60feb8e947` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
