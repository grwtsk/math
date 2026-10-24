# normalizeDetFromEntries

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c8ae26f03c6e2c132ac05ffc96f8a56429cabe52ddd791dc097277551eb582cb",
  "kind": "def",
  "lexical_name": "normalizeDetFromEntries",
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
  "slug": "normalizedetfromentries--4a583f210862bff58ff0e8ba",
  "source": {
    "blob": "d99976a2bcca24f01a21cfa3d2dead5882906b10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 31,
    "path": "GRWTSK/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4a583f210862bff58ff0e8ba93817f653de276266563eb0f126b99a43a31ebac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c8ae26f03c6e2c132ac05ffc96f8a56429cabe52ddd791dc097277551eb582cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def normalizeDetFromEntries {u : Level} {α : Q(Type u)} {n : Q(ℕ)} (rα : Q(CommRing $α))
  (A : Q(Matrix (Fin $n) (Fin $n) $α)) (entries : Array Q($α)) :
    MetaM Simp.Result := do
  let xs : Q(List $α) ← mkListLit α entries.toList
  let arrayExpr : Q(Array $α) := q(List.toArray $xs)
  -- `List.ofFn` is exposed (unlike `Array.ofFn`) and so this reduction can be
  -- checked by the kernel
  have : (List.ofFn fun k : Fin ($n * $n) ↦ $A k.divNat k.modNat) =Q $xs := ⟨⟩
  let hlist : Q(List.ofFn (fun k : Fin ($n * $n) ↦ $A k.divNat k.modNat) = $xs) := q(rfl)
  let hArray := q($hlist ▸ List.toArray_ofFn)
  let birdDet := q(BirdDet.birdDet $n $arrayExpr)
  let detEqBirdDet := q($hArray ▸ Matrix.ofArray_ofFn $A ▸ BirdDet.det_eq_birdDet
    (Array.ofFn fun k : Fin ($n * $n) ↦ $A k.divNat k.modNat) Array.size_ofFn)
  let birdDetNorm ← normalizeBirdDet birdDet
  let detEqBirdDetRes : Simp.Result := ⟨birdDet, some detEqBirdDet, true⟩
  detEqBirdDetRes.mkEqTrans birdDetNorm

/-- Extract the entries of a square `!![...]` matrix literal in row-major order.
Returns `none` if `A` is not an `n × n` matrix literal. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NormDet/Variant78f01561c3fcc49bb265cb4330e1542173588b60e07bab41f87772c8f4508365.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d99976a2bcca24f01a21cfa3d2dead5882906b10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
