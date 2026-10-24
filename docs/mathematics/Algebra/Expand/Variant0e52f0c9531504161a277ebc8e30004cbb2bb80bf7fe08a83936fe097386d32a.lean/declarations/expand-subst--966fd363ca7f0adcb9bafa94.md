# expand_subst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9dcc363-f4e1-2d9c-b6df-19175eed1192",
  "kind": "theorem",
  "lexical_name": "expand_subst",
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
  "slug": "expand-subst--966fd363ca7f0adcb9bafa94",
  "source": {
    "blob": "e77cb70151853865ea8417b14363edcb62805e46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:966fd363ca7f0adcb9bafa94e3bbb08635bd66b1d07a24f12778d83199374d18",
  "verification": {
    "reference": "docs/verification/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9dcc363-f4e1-2d9c-b6df-19175eed1192`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem expand_subst {f : MvPowerSeries τ S} (hf : HasSubst f) (φ : PowerSeries S) :
    (subst f φ).expand p hp = subst (f.expand p hp) φ := by
  rw [PowerSeries.subst, MvPowerSeries.expand_subst _ hp (HasSubst.const hf) (φ := φ),
    PowerSeries.subst]

/- TODO : In the original file of multivariate polynomial, there are two theorems about rename
here, but we don't have rename for multivariate power series. And for `eval₂Hom`, `eval₂`
and `aeval`, the expression does not look good. -/

variable (φ : PowerSeries R) (q : ℕ) (hq : 0 < q)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Expand/Variant0e52f0c9531504161a277ebc8e30004cbb2bb80bf7fe08a83936fe097386d32a.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e77cb70151853865ea8417b14363edcb62805e46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
