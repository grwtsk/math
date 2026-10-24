# character_eq_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f1fb11d34de52fbbb2206f96aaf1f31fbf53079",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 483,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6075522c-36cd-52de-a25d-04b5ab20a987",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f9007e89-1a04-f394-dea0-e8bd26f40c06",
  "kind": "theorem",
  "lexical_name": "character_eq_prod",
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
  "slug": "character-eq-prod--6739552ee33329c1d8517aec",
  "source": {
    "blob": "7f1fb11d34de52fbbb2206f96aaf1f31fbf53079",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 483,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6739552ee33329c1d8517aec336697a85024cefc21c8f9718a10a26a95496646",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f9007e89-1a04-f394-dea0-e8bd26f40c06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem character_eq_prod : {n : Nat} →
    (S : WalshFourier.Frequency n) →
    (x : WalshFourier.Sample n) →
    WalshFourier.character S x =
      Cube.ListTools.prodInt
        ((List.finRange n).map
          (fun i => if S i then Hypercube.spinOfBool (x i) else 1))
  | 0, S, x => by
      simp [WalshFourier.character, Fourier.character, List.finRange_zero]
  | n + 1, S, x => by
      rw [List.finRange_succ_last, List.map_append, List.map_map,
        ListTools.prodInt_append]
      have hsingle :
          Cube.ListTools.prodInt
            (List.map
              (fun i => if S i then Hypercube.spinOfBool (x i) else 1)
              [Fin.last n]) =
            (if S (Fin.last n) then
              Hypercube.spinOfBool (x (Fin.last n)) else 1) := by
        simp
      have hcast :
          ((List.finRange n).map
            ((fun i => if S i then Hypercube.spinOfBool (x i) else 1) ∘
              Fin.castSucc)) =
            ((List.finRange n).map
              (fun j =>
                if Hypercube.dropLast S j then
                  Hypercube.spinOfBool (Hypercube.dropLast x j) else 1)) :=
        List.map_congr_left (fun j _ => rfl)
      rw [hsingle, hcast,
        ← character_eq_prod (Hypercube.dropLast S) (Hypercube.dropLast x)]
      calc
        WalshFourier.character S x =
            WalshFourier.character S
              (Hypercube.extend (Hypercube.dropLast x) (Hypercube.last x)) := by
          rw [extend_dropLast_last]
        _ = WalshFourier.character (Hypercube.dropLast S) (Hypercube.dropLast x) *
            (if S (Fin.last n) then
              Hypercube.spinOfBool (x (Fin.last n)) else 1) := by
          rw [WalshFourier.character_extend]
          have hlastS : S (Fin.last n) = Hypercube.last S := rfl
          have hlastx : x (Fin.last n) = Hypercube.last x := rfl
          rw [hlastS, hlastx]
          cases Hypercube.last S <;> rfl

/-- The Walsh character is invariant under simultaneous coordinate
reindexing of the frequency and the sample. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PermutationFrequencyFactorization/Variant0f63b337061893a29fadef458639557b0bc7b9c452000d269cd634a090ad9309.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1fb11d34de52fbbb2206f96aaf1f31fbf53079` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
