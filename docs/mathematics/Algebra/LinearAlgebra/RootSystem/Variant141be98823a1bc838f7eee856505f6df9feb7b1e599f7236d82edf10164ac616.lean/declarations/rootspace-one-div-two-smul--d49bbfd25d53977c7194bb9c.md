# rootSpace_one_div_two_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18da12d7-ca7e-3ed3-a55c-45b33c97ebfd",
  "kind": "lemma",
  "lexical_name": "rootSpace_one_div_two_smul",
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
  "slug": "rootspace-one-div-two-smul--d49bbfd25d53977c7194bb9c",
  "source": {
    "blob": "991560bcbd90b9229f41921d33e1418b0b3c1a11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 340,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d49bbfd25d53977c7194bb9cc13ce601645bccbe907cffada1fdd122430b28a2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18da12d7-ca7e-3ed3-a55c-45b33c97ebfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rootSpace_one_div_two_smul (hα : α.IsNonZero) : rootSpace H ((2⁻¹ : K) • α) = ⊥ := by
  by_contra h
  let W : Weight K H L := ⟨_, h⟩
  have hW : 2 • (W : H → K) = α := by
    change 2 • (2⁻¹ : K) • (α : H → K) = α
    rw [← Nat.cast_smul_eq_nsmul K, smul_smul]; simp
  apply α.genWeightSpace_ne_bot
  have := rootSpace_two_smul W (fun (e : (W : H → K) = 0) ↦ hα <| by
    apply_fun (2 • ·) at e; simpa [hW] using e)
  rwa [hW] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant141be98823a1bc838f7eee856505f6df9feb7b1e599f7236d82edf10164ac616.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `991560bcbd90b9229f41921d33e1418b0b3c1a11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
