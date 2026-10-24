# instAddCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6036be7c65722b7fba76efb331547a67e600130f04d921a3a0e8f7e475195c50",
  "kind": "instance",
  "lexical_name": "instAddCommMonoid",
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
  "slug": "instaddcommmonoid--233c13eb9a79294ffb51b461",
  "source": {
    "blob": "177776ef55055397436abf880aa7fbb25c2ebed3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 443,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:233c13eb9a79294ffb51b46121864e9534776efaca423f68802d6cdd3ad53c0c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6036be7c65722b7fba76efb331547a67e600130f04d921a3a0e8f7e475195c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instAddCommMonoid : AddCommMonoid (E →ₗ.[R] F) :=
  ⟨fun f g => by
    ext x y hxy
    · simp only [add_domain, inf_comm]
    · simp only [add_apply, hxy, add_comm]⟩

end Add

section VAdd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearPMap/Variantca44a623620c16edc37d0507fa178911a5bfe085bde73f495c5cbd549c63e9d0.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `177776ef55055397436abf880aa7fbb25c2ebed3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
