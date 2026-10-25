# isPrincipal_nfp_iSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a98aefc-09a9-ad2e-573e-09c3a8bf2e33",
  "kind": "theorem",
  "lexical_name": "isPrincipal_nfp_iSup",
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
  "slug": "isprincipal-nfp-isup--e56960c95c0e6ba58516ae4f",
  "source": {
    "blob": "f861d902ab73fb9d15ebb284b22fb433054e57d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 167,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e56960c95c0e6ba58516ae4fd5c1479c122d3a2702b1c56623d8825215294260",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a98aefc-09a9-ad2e-573e-09c3a8bf2e33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isPrincipal_nfp_iSup (op : Ordinal → Ordinal → Ordinal) (o : Ordinal) :
    IsPrincipal op (nfp (fun x ↦ ⨆ y : Set.Iio x ×ˢ Set.Iio x, succ (op y.1.1 y.1.2)) o) := by
  intro a b ha hb
  rw [lt_nfp_iff] at *
  obtain ⟨m, ha⟩ := ha
  obtain ⟨n, hb⟩ := hb
  obtain h | h := le_total
    ((fun x ↦ ⨆ y : Set.Iio x ×ˢ Set.Iio x, succ (op y.1.1 y.1.2))^[m] o)
    ((fun x ↦ ⨆ y : Set.Iio x ×ˢ Set.Iio x, succ (op y.1.1 y.1.2))^[n] o)
  · use n + 1
    rw [Function.iterate_succ']
    apply (lt_succ _).trans_le
    exact Ordinal.le_iSup (fun y : Set.Iio _ ×ˢ Set.Iio _ ↦ succ (op y.1.1 y.1.2))
      ⟨_, Set.mk_mem_prod (ha.trans_le h) hb⟩
  · use m + 1
    rw [Function.iterate_succ']
    apply (lt_succ _).trans_le
    exact Ordinal.le_iSup (fun y : Set.Iio _ ×ˢ Set.Iio _ ↦ succ (op y.1.1 y.1.2))
      ⟨_, Set.mk_mem_prod ha (hb.trans_le h)⟩

/-- Principal ordinals under any operation are unbounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Principal/Variant4a133e78870ffd2fe2da6991fe5a021113de02308e6fca6a8b58b1dff5f73396.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f861d902ab73fb9d15ebb284b22fb433054e57d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
