# eq_symm_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f678462-6ead-3eca-c89f-f2064ae24244",
  "kind": "theorem",
  "lexical_name": "eq_symm_comp",
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
  "slug": "eq-symm-comp--599d059a8fb0c7c69c5806c7",
  "source": {
    "blob": "0d970753643a6c1e4d2363a6b5e2df7bf0a7ae47",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 490,
    "line": 486,
    "path": "GRWTSK/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:599d059a8fb0c7c69c5806c75f5c32d59c7a6437774ac0f9ede7d8c658d92c6e",
  "verification": {
    "reference": "docs/verification/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f678462-6ead-3eca-c89f-f2064ae24244`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 486–490.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_symm_comp {α : Type*} (e : M ≃ₜ* N) (f : α → M) (g : α → N) :
    f = e.symm ∘ g ↔ e ∘ f = g :=
  e.toEquiv.eq_symm_comp f g

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/ContinuousMonoidHom/Variantdb636dc0559374b155214e7ad5c4e39d03fb64caa5cf787de0c0cf6cdb742696.lean#L486).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d970753643a6c1e4d2363a6b5e2df7bf0a7ae47` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
