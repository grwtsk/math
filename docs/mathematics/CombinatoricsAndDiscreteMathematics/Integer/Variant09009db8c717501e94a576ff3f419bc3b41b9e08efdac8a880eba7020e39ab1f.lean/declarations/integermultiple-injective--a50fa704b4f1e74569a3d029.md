# integerMultiple_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0452609-1bbe-0c8c-e4e4-07c4a0bcffdd",
  "kind": "theorem",
  "lexical_name": "integerMultiple_injective",
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
  "slug": "integermultiple-injective--a50fa704b4f1e74569a3d029",
  "source": {
    "blob": "43f694d28e73995417cee0ceff4bea2f97e7ec71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 135,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant09009db8c717501e94a576ff3f419bc3b41b9e08efdac8a880eba7020e39ab1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a50fa704b4f1e74569a3d029aa10979455689e4d8757f15fdb96d9b941439adb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Integer/Variant09009db8c717501e94a576ff3f419bc3b41b9e08efdac8a880eba7020e39ab1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0452609-1bbe-0c8c-e4e4-07c4a0bcffdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerMultiple_injective {ι : Type*} (s : Finset ι) (f : ι → S)
    (hf : Function.Injective f) : Function.Injective (integerMultiple M s f) := by
  intro i j h
  rw [← SetLike.coe_eq_coe, ← hf.eq_iff,
    ← (IsLocalization.smul_bijective S (commonDenom M s f)).injective.eq_iff,
    ← map_integerMultiple M s f i, ← map_integerMultiple M s f j, h]

@[deprecated (since := "2026-07-18")] alias integerMultipleMultiple_injective :=
  integerMultiple_injective

/-- A choice of a common multiple of the denominators of a finite set of fractions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Integer/Variant09009db8c717501e94a576ff3f419bc3b41b9e08efdac8a880eba7020e39ab1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Integer/Variant09009db8c717501e94a576ff3f419bc3b41b9e08efdac8a880eba7020e39ab1f.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43f694d28e73995417cee0ceff4bea2f97e7ec71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
