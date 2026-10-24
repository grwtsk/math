# linearIndependent_of_sourceColumnCharacters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88703ad97a057b6eef57ec88991365ac5a8b48fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6f9e49b-0245-100d-7aa8-0fea96e0bf62",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef01531a-dc3b-7586-daa0-c0fba43379c9",
  "kind": "theorem",
  "lexical_name": "linearIndependent_of_sourceColumnCharacters",
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
  "slug": "linearindependent-of-sourcecolumncharacters--46d2f767c933380077b6e13e",
  "source": {
    "blob": "88703ad97a057b6eef57ec88991365ac5a8b48fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 78,
    "path": "GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46d2f767c933380077b6e13ea295a502846a1f4aa50def1fb9d875480e233bde",
  "verification": {
    "reference": "docs/verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef01531a-dc3b-7586-daa0-c0fba43379c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linearIndependent_of_sourceColumnCharacters
    {G : Type*} [AddCommGroup G]
    (points : Fin 32 → G)
    (characters : Fin 32 → G →+ ZMod 2)
    (noTwoTorsion : ∀ x : G, (2 : ℤ) • x = 0 → x = 0)
    (sourceValues : ∀ (j i : Fin 32),
      characters j (points i) = characterMatrix i j) :
    LinearIndependent ℤ points := by
  classical
  apply linearIndependent_of_even_relations points noTwoTorsion
  intro c hc i
  let coeff : Fin 32 → ZMod 2 := fun j => (c j : ZMod 2)
  have hzero : characterMatrix.transpose.mulVec coeff = 0 := by
    funext j
    have hchar : characters j (∑ k, c k • points k) = 0 := by
      rw [hc]
      exact map_zero _
    simp only [map_sum, map_zsmul, zsmul_eq_mul, sourceValues] at hchar
    simpa only [Matrix.mulVec_apply_eq_sum, Matrix.transpose_apply,
      coeff, mul_comm, Pi.zero_apply] using hchar
  have hcoeff : coeff = 0 := by
    apply characterTranspose_mulVec_injective
    simpa using hzero
  have hi := congrArg (fun f : Fin 32 → ZMod 2 => f i) hcoeff
  exact (ZMod.intCast_zmod_eq_zero_iff_dvd (c i) 2).mp (by
    simpa [coeff] using hi)

/-- A bona fide additive character obtained by composing a multiplicative
descent homomorphism with a multiplicative square-class character.
In Stoll's source, the former has shape
  WeierstrassCurve.Affine.μ : Multiplicative W.Point →* W.M.
Constructing the second map at each prime is STILL AN OPEN SUPPLIER. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticGeometry/EllipticCurves/Record4239SquareClassBridge.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88703ad97a057b6eef57ec88991365ac5a8b48fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
