# Basis.ofSplitExact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86423e4029cc3be8009a1e66bd110afb2bf86fea5d7ff2aef392fd0fcdfacf5e",
  "kind": "def",
  "lexical_name": "Basis.ofSplitExact",
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
  "slug": "basis-ofsplitexact--cb6e84fd9ef54f95bdbb74ce",
  "source": {
    "blob": "d62e727b37ffb35b6cfb858aa16b30bd17b62485",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb6e84fd9ef54f95bdbb74cefdde47a75411ad6240b96ea3e62c8c4ce18379c9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86423e4029cc3be8009a1e66bd110afb2bf86fea5d7ff2aef392fd0fcdfacf5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Basis.ofSplitExact (hg : Function.Surjective g) (v : Basis ι R M)
    (hainj : Function.Injective a) (hsa : ∀ i, s (v (a i)) = 0)
    (hlib : LinearIndependent R (s ∘ v ∘ b))
    (hab : Codisjoint (Set.range a) (Set.range b)) :
    Basis κ R P :=
  Basis.mk (v.linearIndependent.linearIndependent_of_exact_of_retraction hs hfg hainj hsa)
    (Submodule.top_le_span_of_exact_of_retraction hs hfg hg hsa hlib hab (by rw [v.span_eq]))
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Exact/Variant973fe451c564bf8e0a72733daf35eed15f21b5a5291d4a0cc40d9c63dc9d077c.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d62e727b37ffb35b6cfb858aa16b30bd17b62485` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
