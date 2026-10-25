# quasiIsoEquiv_id_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a932212-6aa3-3b2b-515a-e05dc1f58dce",
  "kind": "theorem",
  "lexical_name": "quasiIsoEquiv_id_apply",
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
  "slug": "quasiisoequiv-id-apply--0edd07ad37f0ee6e8b7f215a",
  "source": {
    "blob": "0e787d8359004de95a9de0ef1b508209a514a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 85,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0edd07ad37f0ee6e8b7f215a20ac877baa5e6c961c88b86d9a552dd44bc316a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a932212-6aa3-3b2b-515a-e05dc1f58dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiIsoEquiv_id_apply
    (C : M.Object)
    (x : D.Line C) :
    D.quasiIsoEquiv (CertifiedQuasiIso.id M C) x = x := by
  rw [D.quasiIsoEquiv_id]
  rfl

end Theory

/-! ## A concrete rank-one finite-free model -/

namespace FiniteFreeRankOne

/--
The model of one finite-free rank-one module, viewed as a complex concentrated
in degree zero.  Morphisms and supported isomorphisms are linear
automorphisms; hence every represented morphism is a quasi-isomorphism in this
small model.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Core/Variantd693caf9922e58ce1048d9abeb15b45e08b6b22d0fa4842f328ae19d44653b36.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e787d8359004de95a9de0ef1b508209a514a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
