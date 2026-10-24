# OneHom.id_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab0ec937-1703-4877-e395-b28372902223",
  "kind": "theorem",
  "lexical_name": "OneHom.id_comp",
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
  "slug": "onehom-id-comp--b1bbcb3b2b5d31517a23bf36",
  "source": {
    "blob": "a68ceddfbce3c61d0647ec6a830a5639066ca61a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 847,
    "line": 844,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantfb61e196035c867aa7094e669388dd253fa68985b306aed055b164a207e1e65d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1bbcb3b2b5d31517a23bf364b57f8cdfbca1d11899ebf0b9b436b59afa9978b",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantfb61e196035c867aa7094e669388dd253fa68985b306aed055b164a207e1e65d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab0ec937-1703-4877-e395-b28372902223`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 844–847.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem OneHom.id_comp [One M] [One N] (f : OneHom M N) : (OneHom.id N).comp f = f :=
  OneHom.ext fun _ => rfl

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantfb61e196035c867aa7094e669388dd253fa68985b306aed055b164a207e1e65d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantfb61e196035c867aa7094e669388dd253fa68985b306aed055b164a207e1e65d.lean#L844).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a68ceddfbce3c61d0647ec6a830a5639066ca61a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
