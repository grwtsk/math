# exists_mem_normalizedFactors_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a3e4d04-5d17-daa2-69e3-959d8a032a1b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9431cfa4-62cd-8983-11e5-3bd6193fe773",
  "kind": "theorem",
  "lexical_name": "exists_mem_normalizedFactors_of_dvd",
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
  "slug": "exists-mem-normalizedfactors-of-dvd--5b782109e4dd4e41e5548ad0",
  "source": {
    "blob": "7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b782109e4dd4e41e5548ad0512c1b53decb951dac1e1c6c06401900db90cd81",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9431cfa4-62cd-8983-11e5-3bd6193fe773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_mem_normalizedFactors_of_dvd {a p : α} (ha0 : a ≠ 0) (hp : Irreducible p) :
    p ∣ a → ∃ q ∈ normalizedFactors a, p ~ᵤ q := fun ⟨b, hb⟩ =>
  have hb0 : b ≠ 0 := fun hb0 => by simp_all
  have : Multiset.Rel Associated (p ::ₘ normalizedFactors b) (normalizedFactors a) :=
    factors_unique
      (fun _ hx =>
        (Multiset.mem_cons.1 hx).elim (fun h => h.symm ▸ hp) (irreducible_of_normalized_factor _))
      irreducible_of_normalized_factor
      (Associated.symm <|
        calc
          Multiset.prod (normalizedFactors a) ~ᵤ a := prod_normalizedFactors ha0
          _ = p * b := hb
          _ ~ᵤ Multiset.prod (p ::ₘ normalizedFactors b) := by
            rw [Multiset.prod_cons]
            exact (prod_normalizedFactors hb0).symm.mul_left _
          )
  Multiset.exists_mem_of_rel_of_mem this (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NormalizedFactors/Variant078979542658a2bec964de7d84eecf3bb2022c333dcfe8a0ae297a8a1c0ecf02.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c4263bf072a1e1bbd7d4d5edd0fd7cd315154f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
