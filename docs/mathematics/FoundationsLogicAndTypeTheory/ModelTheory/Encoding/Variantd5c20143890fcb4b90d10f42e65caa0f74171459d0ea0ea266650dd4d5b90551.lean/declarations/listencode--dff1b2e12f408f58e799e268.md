# listEncode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55a3906108c979e7e4525f9182843eec68ec65fff480fbce34bc1cf7bb81f61c",
  "kind": "def",
  "lexical_name": "listEncode",
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
  "slug": "listencode--dff1b2e12f408f58e799e268",
  "source": {
    "blob": "a46e02d2a0032cd7024f30e5c97291c64e4d43e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dff1b2e12f408f58e799e26806531f7eb21de1ce2518027f64bd108829401ae1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55a3906108c979e7e4525f9182843eec68ec65fff480fbce34bc1cf7bb81f61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def listEncode : ∀ {n : ℕ},
    L.BoundedFormula α n → List ((Σ k, L.Term (α ⊕ Fin k)) ⊕ ((Σ n, L.Relations n) ⊕ ℕ))
  | n, falsum => [Sum.inr (Sum.inr (n + 2))]
  | _, equal t₁ t₂ => [Sum.inl ⟨_, t₁⟩, Sum.inl ⟨_, t₂⟩]
  | n, rel R ts => [Sum.inr (Sum.inl ⟨_, R⟩), Sum.inr (Sum.inr n)] ++
      (List.finRange _).map fun i => Sum.inl ⟨n, ts i⟩
  | _, imp φ₁ φ₂ => (Sum.inr (Sum.inr 0)::φ₁.listEncode) ++ φ₂.listEncode
  | _, all φ => Sum.inr (Sum.inr 1)::φ.listEncode

/-- Applies the `forall` quantifier to an element of `(Σ n, L.BoundedFormula α n)`,
or returns `default` if not possible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Encoding/Variantd5c20143890fcb4b90d10f42e65caa0f74171459d0ea0ea266650dd4d5b90551.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a46e02d2a0032cd7024f30e5c97291c64e4d43e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
