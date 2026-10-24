# isIsotypic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48680588-ab57-b843-8a6f-f8c788e44a81",
  "kind": "theorem",
  "lexical_name": "isIsotypic",
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
  "slug": "isisotypic--fb864eca4cde03d316117925",
  "source": {
    "blob": "ab359f133252d77bc7c9bf54e0f31a48529e29c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 90,
    "path": "GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Varianta0eba9816dbf22c527def26c1e65ad711a8e85de4d2bb91dcc2dd4f16004f3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb864eca4cde03d316117925be170481bb91c9041d5340f2adfae0c02f8d7011",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/WedderburnArtin/Varianta0eba9816dbf22c527def26c1e65ad711a8e85de4d2bb91dcc2dd4f16004f3a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48680588-ab57-b843-8a6f-f8c788e44a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIsotypic (M) [AddCommGroup M] [Module R M] : IsIsotypic R M :=
  (isSimpleRing_isArtinianRing_iff.mp ⟨‹_›, ‹_›⟩).2.1.of_self M

/-- The **Wedderburn–Artin Theorem**: an Artinian simple ring is isomorphic to a matrix
ring over the opposite of the endomorphism ring of its simple module. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WedderburnArtin/Varianta0eba9816dbf22c527def26c1e65ad711a8e85de4d2bb91dcc2dd4f16004f3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Varianta0eba9816dbf22c527def26c1e65ad711a8e85de4d2bb91dcc2dd4f16004f3a6.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab359f133252d77bc7c9bf54e0f31a48529e29c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
