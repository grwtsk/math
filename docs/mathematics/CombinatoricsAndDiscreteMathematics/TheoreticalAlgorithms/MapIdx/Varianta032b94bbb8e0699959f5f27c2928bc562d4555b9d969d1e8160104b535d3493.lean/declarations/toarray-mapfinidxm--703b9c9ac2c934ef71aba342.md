# toArray_mapFinIdxM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbd35523-52c0-22e9-ba8b-1c1e7b6cc1c5",
  "kind": "theorem",
  "lexical_name": "toArray_mapFinIdxM",
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
  "slug": "toarray-mapfinidxm--703b9c9ac2c934ef71aba342",
  "source": {
    "blob": "c8445ed52939034edd19a0fe427fde8b60d7f120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 365,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:703b9c9ac2c934ef71aba342022d053175ccc2da86f59ba04b9312ec9597dada",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbd35523-52c0-22e9-ba8b-1c1e7b6cc1c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toArray_mapFinIdxM [Monad m] [LawfulMonad m] {xs : Vector α n}
    {f : (i : Nat) → α → (h : i < n) → m β} :
    toArray <$> xs.mapFinIdxM f = xs.toArray.mapFinIdxM
      (fun i x h => f i x (size_toArray xs ▸ h)) := by
  let rec go (i j : Nat) (inv : i + j = n) (bs : Vector β (n - i)) :
      toArray <$> mapFinIdxM.map xs f i j inv bs
      = Array.mapFinIdxM.map xs.toArray (fun i x h => f i x (size_toArray xs ▸ h))
        i j (size_toArray _ ▸ inv) bs.toArray := by
    match i with
    | 0 => simp [mapFinIdxM.map, map_pure, Array.mapFinIdxM.map, Nat.sub_zero]
    | k + 1 =>
      simp only [mapFinIdxM.map, map_bind, Array.mapFinIdxM.map, getElem_toArray]
      conv => lhs; arg 2; intro; rw [go]
      rfl
  simp only [mapFinIdxM, Array.mapFinIdxM, size_toArray]
  exact go _ _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MapIdx/Varianta032b94bbb8e0699959f5f27c2928bc562d4555b9d969d1e8160104b535d3493.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8445ed52939034edd19a0fe427fde8b60d7f120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
