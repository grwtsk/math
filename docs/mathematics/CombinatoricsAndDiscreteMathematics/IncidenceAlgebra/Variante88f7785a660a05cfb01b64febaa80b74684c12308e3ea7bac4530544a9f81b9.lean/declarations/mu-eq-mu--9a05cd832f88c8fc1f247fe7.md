# mu_eq_mu'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:397dd3ef-d865-bef1-5367-43cbe0c4df6c",
  "kind": "lemma",
  "lexical_name": "mu_eq_mu'",
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
  "slug": "mu-eq-mu--9a05cd832f88c8fc1f247fe7",
  "source": {
    "blob": "2b97cd4b822ad2646325971198a8dd7891c63a8d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 508,
    "line": 505,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variante88f7785a660a05cfb01b64febaa80b74684c12308e3ea7bac4530544a9f81b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a05cd832f88c8fc1f247fe7f6397758aacaf574d54253f2f9903654aa132128",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variante88f7785a660a05cfb01b64febaa80b74684c12308e3ea7bac4530544a9f81b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:397dd3ef-d865-bef1-5367-43cbe0c4df6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 505–508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mu_eq_mu' : (mu 𝕜 : IncidenceAlgebra 𝕜 α) = mu' 𝕜 := by
  classical
  exact left_inv_eq_right_inv (mu_mul_zeta _ _) (zeta_mul_mu' _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variante88f7785a660a05cfb01b64febaa80b74684c12308e3ea7bac4530544a9f81b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IncidenceAlgebra/Variante88f7785a660a05cfb01b64febaa80b74684c12308e3ea7bac4530544a9f81b9.lean#L505).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b97cd4b822ad2646325971198a8dd7891c63a8d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
