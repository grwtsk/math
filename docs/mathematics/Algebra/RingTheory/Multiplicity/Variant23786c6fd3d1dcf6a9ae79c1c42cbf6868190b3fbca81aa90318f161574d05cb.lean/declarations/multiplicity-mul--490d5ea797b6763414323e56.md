# multiplicity_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4019ce4501b82d55b5162b00841ca2811ed14f52",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 703,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8bf409a-5e42-f890-140c-ed55499cc39b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:424c985e-8130-a8ca-69d8-2189d3c13e64",
  "kind": "theorem",
  "lexical_name": "multiplicity_mul",
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
  "slug": "multiplicity-mul--490d5ea797b6763414323e56",
  "source": {
    "blob": "4019ce4501b82d55b5162b00841ca2811ed14f52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 716,
    "line": 703,
    "path": "GRWTSK/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:490d5ea797b6763414323e56a617524c08b2c004dc2530d18d0484e2e3f8737c",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:424c985e-8130-a8ca-69d8-2189d3c13e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 703–716.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_mul {p a b : α} (hp : Prime p) (hfin : FiniteMultiplicity p (a * b)) :
    multiplicity p (a * b) = multiplicity p a + multiplicity p b := by
  have hdiva : p ^ multiplicity p a ∣ a := pow_multiplicity_dvd ..
  have hdivb : p ^ multiplicity p b ∣ b := pow_multiplicity_dvd ..
  have hdiv : p ^ (multiplicity p a + multiplicity p b) ∣ a * b := by
    rw [pow_add]; gcongr
  have hsucc : ¬p ^ (multiplicity p a + multiplicity p b + 1) ∣ a * b :=
    fun h =>
    not_or_intro (hfin.mul_left.not_pow_dvd_of_multiplicity_lt (lt_succ_self _))
      (hfin.mul_right.not_pow_dvd_of_multiplicity_lt (lt_succ_self _))
      (_root_.succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul hp hdiva hdivb h)
  rw [hfin.multiplicity_eq_iff]
  exact ⟨hdiv, hsucc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/Multiplicity/Variant23786c6fd3d1dcf6a9ae79c1c42cbf6868190b3fbca81aa90318f161574d05cb.lean#L703).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4019ce4501b82d55b5162b00841ca2811ed14f52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
