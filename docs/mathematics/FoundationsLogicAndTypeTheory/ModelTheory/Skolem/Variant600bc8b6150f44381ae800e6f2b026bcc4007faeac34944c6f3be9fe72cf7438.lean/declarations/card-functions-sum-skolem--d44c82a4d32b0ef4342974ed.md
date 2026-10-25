# card_functions_sum_skolem₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2910278fb18bb039a8b870dba203cf079fa837",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/60/600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71a2362d-d023-02a6-016e-ed6bb7c125e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f07560d-03ab-874b-17d6-0a65a09773dc",
  "kind": "theorem",
  "lexical_name": "card_functions_sum_skolem₁",
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
  "slug": "card-functions-sum-skolem--d44c82a4d32b0ef4342974ed",
  "source": {
    "blob": "7e2910278fb18bb039a8b870dba203cf079fa837",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d44c82a4d32b0ef4342974ed562b0c46bb5cba785d910c5982a3adbd9a79f398",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f07560d-03ab-874b-17d6-0a65a09773dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_functions_sum_skolem₁ :
    #(Σ n, (L.sum L.skolem₁).Functions n) = #(Σ n, L.BoundedFormula Empty (n + 1)) := by
  simp only [card_functions_sum, skolem₁_Functions, mk_sigma, sum_add_distrib']
  conv_lhs => enter [2, 1, i]; rw [lift_id'.{u, v}]
  rw [add_comm, add_eq_max, max_eq_left]
  · refine' sum_le_sum _ _ fun n => _
    rw [← lift_le.{_, max u v}, lift_lift, lift_mk_le.{v}]
    refine' ⟨⟨fun f => (func f default).bdEqual (func f default), fun f g h => _⟩⟩
    rcases h with ⟨rfl, ⟨rfl⟩⟩
    rfl
  · rw [← mk_sigma]
    exact infinite_iff.1 (Infinite.of_injective (fun n => ⟨n, ⊥⟩) fun x y xy =>
      (Sigma.mk.inj_iff.1 xy).1)
#align first_order.language.card_functions_sum_skolem₁ FirstOrder.Language.card_functions_sum_skolem₁

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Skolem/Variant600bc8b6150f44381ae800e6f2b026bcc4007faeac34944c6f3be9fe72cf7438.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2910278fb18bb039a8b870dba203cf079fa837` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
