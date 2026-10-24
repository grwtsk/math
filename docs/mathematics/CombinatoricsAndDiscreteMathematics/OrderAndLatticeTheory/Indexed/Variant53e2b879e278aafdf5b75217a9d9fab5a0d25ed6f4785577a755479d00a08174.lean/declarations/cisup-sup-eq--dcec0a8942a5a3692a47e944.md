# ciSup_sup_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4498bc8a-251e-dd5e-256b-ba9e5efd225a",
  "kind": "theorem",
  "lexical_name": "ciSup_sup_eq",
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
  "slug": "cisup-sup-eq--dcec0a8942a5a3692a47e944",
  "source": {
    "blob": "75e9aa7a7d765e89dde9fae09188efa9ea53b48f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 162,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant53e2b879e278aafdf5b75217a9d9fab5a0d25ed6f4785577a755479d00a08174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcec0a8942a5a3692a47e944e1c9cd312efb021c856b6df046bb3c38f171f3f3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant53e2b879e278aafdf5b75217a9d9fab5a0d25ed6f4785577a755479d00a08174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4498bc8a-251e-dd5e-256b-ba9e5efd225a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ciSup_sup_eq {f g : ι → α} (Hf : BddAbove <| range f) (Hg : BddAbove <| range g) :
    ⨆ x, f x ⊔ g x = (⨆ x, f x) ⊔ (⨆ x, g x) := by
  cases isEmpty_or_nonempty ι
  · simp [iSup_of_empty']
  apply le_antisymm <| ciSup_le fun x ↦ sup_le_sup (le_ciSup Hf x) (le_ciSup Hg x)
  have := bbdAbove_range_sup Hf Hg
  exact sup_le (ciSup_mono this fun _ ↦ le_sup_left) (ciSup_mono this fun _ ↦ le_sup_right)

@[to_dual ciInf_set_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant53e2b879e278aafdf5b75217a9d9fab5a0d25ed6f4785577a755479d00a08174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Indexed/Variant53e2b879e278aafdf5b75217a9d9fab5a0d25ed6f4785577a755479d00a08174.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75e9aa7a7d765e89dde9fae09188efa9ea53b48f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
