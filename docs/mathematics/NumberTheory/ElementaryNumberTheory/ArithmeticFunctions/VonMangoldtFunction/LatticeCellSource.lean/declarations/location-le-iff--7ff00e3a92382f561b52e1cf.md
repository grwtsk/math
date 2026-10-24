# location_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f556594f-889f-16c4-172c-c63d519c2f05",
  "kind": "theorem",
  "lexical_name": "location_le_iff",
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
  "slug": "location-le-iff--7ff00e3a92382f561b52e1cf",
  "source": {
    "blob": "4f357f78a2fc24c8c7cf71eb0bc367f1b7672181",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 59,
    "path": "GRWTSK/NumberTheory/VonMangoldt/LatticeCellSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ff00e3a92382f561b52e1cfe8c8b1129d882cb4822a5045d26d3fc526d0524c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f556594f-889f-16c4-172c-c63d519c2f05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem location_le_iff {X k n : ℕ} {t : ℝ} (hX : 0<X)
    (ht : t∈Ioo (edge X k) (edge X (k+1))) :
    location X n≤t ↔ n≤X+k := by
  have hp : (0:ℝ)<X := by exact_mod_cast hX
  have ht0 : (k:ℝ)<t*X := (div_lt_iff₀ hp).1 ht.1
  have ht1 : t*X<(k+1:ℕ) := (lt_div_iff₀ hp).1 ht.2
  constructor
  · intro hn
    have hnx : (n:ℝ)≤(t+1)*X := by
      apply (div_le_iff₀ hp).1
      change (n:ℝ)/(X:ℝ)≤t+1
      change (n:ℝ)/(X:ℝ)-1≤t at hn
      linarith
    have hlt : (n:ℝ)<((X+k+1:ℕ):ℝ) := by push_cast at *; nlinarith
    have hltN : n<X+k+1 := by exact_mod_cast hlt
    omega
  · intro hn
    have hnr : (n:ℝ)≤((X+k:ℕ):ℝ) := by exact_mod_cast hn
    change (n:ℝ)/(X:ℝ)-1≤t
    have hdiv : (n:ℝ)/(X:ℝ)≤t+1 := by
      apply (div_le_iff₀ hp).2
      push_cast at hnr
      nlinarith
    linarith

/-- On each open integer cell, the only varying part is the declared logarithm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/LatticeCellSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/VonMangoldt/LatticeCellSource.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f357f78a2fc24c8c7cf71eb0bc367f1b7672181` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
