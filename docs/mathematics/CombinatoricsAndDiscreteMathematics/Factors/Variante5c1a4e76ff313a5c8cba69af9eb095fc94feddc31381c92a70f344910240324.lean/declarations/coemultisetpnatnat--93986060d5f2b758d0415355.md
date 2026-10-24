# coeMultisetPNatNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:089c93e7b6cfeb9a0f98d45cfa4cbe28076441bc6a1634eb3a451d4977dc5eca",
  "kind": "instance",
  "lexical_name": "coeMultisetPNatNat",
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
  "slug": "coemultisetpnatnat--93986060d5f2b758d0415355",
  "source": {
    "blob": "65f041697c9c6bbcc7c8a8a4c241f7040be6d11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93986060d5f2b758d0415355b8bf654e97bf6362e878ba9a3e2f7f1ae01d12e3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:089c93e7b6cfeb9a0f98d45cfa4cbe28076441bc6a1634eb3a451d4977dc5eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance coeMultisetPNatNat : Coe (Multiset ℕ+) (Multiset ℕ) :=
  ⟨fun v => v.map Coe.coe⟩
#align prime_multiset.coe_multiset_pnat_nat PrimeMultiset.coeMultisetPNatNat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Factors/Variante5c1a4e76ff313a5c8cba69af9eb095fc94feddc31381c92a70f344910240324.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65f041697c9c6bbcc7c8a8a4c241f7040be6d11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
