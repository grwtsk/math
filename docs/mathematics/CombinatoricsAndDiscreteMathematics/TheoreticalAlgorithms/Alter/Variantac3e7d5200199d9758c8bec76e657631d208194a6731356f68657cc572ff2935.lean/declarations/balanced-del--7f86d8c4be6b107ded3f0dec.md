# Balanced.del

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b2bd10c-c87b-9cd2-8adc-8f32a326a638",
  "kind": "theorem",
  "lexical_name": "Balanced.del",
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
  "slug": "balanced-del--7f86d8c4be6b107ded3f0dec",
  "source": {
    "blob": "c40de296434223504dbfbfdd5f0aed5e80139d74",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 186,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f86d8c4be6b107ded3f0dec7a78dc29670395ec6998beecacc04574ca6bc32d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b2bd10c-c87b-9cd2-8adc-8f32a326a638`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Balanced.del {path : Path α}
    (hp : path.Balanced c₀ n₀ c n) (ht : t.DelProp c' n) (hc : c = black → c' ≠ red) :
    ∃ n, (path.del t c').Balanced black n := by
  induction hp generalizing t c' with
  | root => match c', ht with
    | red, ⟨_, h⟩ | black, ⟨_, _, h⟩ => exact h.setBlack
  | @redL _ n _ _ hb hp ih => match c', n, ht with
    | red, _, _ => cases hc rfl rfl
    | black, _, ⟨_, rfl, ha⟩ => exact ih ((hb.balLeft ha).of_false (fun.)) (fun.)
  | @redR _ n _ _ ha hp ih => match c', n, ht with
    | red, _, _ => cases hc rfl rfl
    | black, _, ⟨_, rfl, hb⟩ => exact ih ((ha.balRight hb).of_false (fun.)) (fun.)
  | @blackL _ _ n _ _ _ hb hp ih => match c', n, ht with
    | red, _, ⟨_, ha⟩ => exact ih ⟨_, rfl, .redred ⟨⟩ ha hb⟩ (fun.)
    | black, _, ⟨_, rfl, ha⟩ => exact ih ⟨_, rfl, (hb.balLeft ha).imp fun _ => ⟨⟩⟩ (fun.)
  | @blackR _ _ n _ _ _ ha hp ih =>  match c', n, ht with
    | red, _, ⟨_, hb⟩ => exact ih ⟨_, rfl, .redred ⟨⟩ ha hb⟩ (fun.)
    | black, _, ⟨_, rfl, hb⟩ => exact ih ⟨_, rfl, (ha.balRight hb).imp fun _ => ⟨⟩⟩ (fun.)

/-- Asserts that `p` holds on all elements to the left of the hole. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Alter/Variantac3e7d5200199d9758c8bec76e657631d208194a6731356f68657cc572ff2935.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c40de296434223504dbfbfdd5f0aed5e80139d74` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
