# IsLittleOTVS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3eec386711ae720f6c487b4cbd40d6293e9a50d10547d9722ff5771ec7f786e0",
  "kind": "structure",
  "lexical_name": "IsLittleOTVS",
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
  "slug": "islittleotvs--a0ae57f63caf847bbd37d766",
  "source": {
    "blob": "8dbd1d7363a36193dbe45d1c3afe0f7f948faac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 92,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0ae57f63caf847bbd37d766c3859b0ffcc9a308e5908b5f2d692ccbfa4a7e3a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3eec386711ae720f6c487b4cbd40d6293e9a50d10547d9722ff5771ec7f786e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure IsLittleOTVS (l : Filter α) (f : α → E) (g : α → F) : Prop where
  exists_eventuallyLE_mul : ∀ U ∈ 𝓝 (0 : E), ∃ V ∈ 𝓝 (0 : F), ∀ ε ≠ (0 : ℝ≥0),
    (fun x ↦ egauge 𝕜 U (f x)) ≤ᶠ[l] (fun x ↦ ε * egauge 𝕜 V (g x))

@[inherit_doc]
notation:100 f " =o[" 𝕜 "; " l "] " g:100 => IsLittleOTVS 𝕜 l f g

/-- `f =O[𝕜; l] g` (`IsBigOTVS 𝕜 l f g`) is a generalization of `f =O[l] g` (`IsBigO l f g`)
that works in topological `𝕜`-vector spaces.

Given two functions `f` and `g` taking values in topological vector spaces
over a normed field `𝕜`,
we say that $f = O(g)$ if for any neighborhood of zero `U` in the codomain of `f`
there exists a neighborhood of zero `V` in the codomain of `g`
such that $\operatorname{gauge}_{K, U} (f(x)) \le \operatorname{gauge}_{K, V} (g(x))$,
where $\operatorname{gauge}_{K, U}(y) = \inf \{‖c‖ \mid y ∈ c • U\}$.
-/
@[mk_iff]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TVS/Variant5a37f7656a1cbf7f06c87b47cfdb7a1e63fc2754a287029c7b7e036ac1d1834e.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dbd1d7363a36193dbe45d1c3afe0f7f948faac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
