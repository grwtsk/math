# mul_lt_omega_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 334,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0cc727a-da67-8306-c552-4a22710dead3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c44e732-0bfb-9c00-ef5d-4877603dbc2b",
  "kind": "theorem",
  "lexical_name": "mul_lt_omega_opow",
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
  "slug": "mul-lt-omega-opow--3ef40ce118e7694b1bc355be",
  "source": {
    "blob": "ebd3f85e02445d20039fcd47eecc281d59dceb35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 334,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ef40ce118e7694b1bc355be362c6abac92aaca29b0b69227e44e8d8b9a535a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c44e732-0bfb-9c00-ef5d-4877603dbc2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_lt_omega_opow {a b c : Ordinal} (c0 : 0 < c) (ha : a < (omega^c)) (hb : b < omega) :
    a * b < (omega^c) := by
  rcases zero_or_succ_or_limit c with (rfl | ⟨c, rfl⟩ | l)
  · exact (lt_irrefl _).elim c0
  · rw [opow_succ] at ha
    rcases((mul_isNormal <| opow_pos _ omega_pos).limit_lt omega_isLimit).1 ha with ⟨n, hn, an⟩
    apply (mul_le_mul_right' (le_of_lt an) _).trans_lt
    rw [opow_succ, mul_assoc, mul_lt_mul_iff_left (opow_pos _ omega_pos)]
    exact principal_mul_omega hn hb
  · rcases((opow_isNormal one_lt_omega).limit_lt l).1 ha with ⟨x, hx, ax⟩
    refine' (mul_le_mul' (le_of_lt ax) (le_of_lt hb)).trans_lt _
    rw [← opow_succ, opow_lt_opow_iff_right one_lt_omega]
    exact l.2 _ hx
#align ordinal.mul_lt_omega_opow Ordinal.mul_lt_omega_opow

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variantce7df670faf2e5c966bd9dea990023a968aaa4fa4914d3c57e0ac0705ab88acc.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebd3f85e02445d20039fcd47eecc281d59dceb35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
