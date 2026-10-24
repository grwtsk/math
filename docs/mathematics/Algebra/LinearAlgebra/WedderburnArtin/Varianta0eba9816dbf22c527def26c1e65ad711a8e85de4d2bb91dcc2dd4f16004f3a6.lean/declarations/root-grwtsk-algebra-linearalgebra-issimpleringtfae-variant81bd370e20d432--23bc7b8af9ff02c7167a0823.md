# _root_.GRWTSK.Algebra.LinearAlgebra.IsSimpleRingTfae.Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.IsSemisimpleRing.moduleEnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae9503ed-c284-b480-0ea4-96e75d6550a6",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.IsSimpleRingTfae.Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.IsSemisimpleRing.moduleEnd",
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
  "slug": "root-grwtsk-algebra-linearalgebra-issimpleringtfae-variant81bd370e20d432--23bc7b8af9ff02c7167a0823",
  "source": {
    "blob": "ab359f133252d77bc7c9bf54e0f31a48529e29c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Varianta0eba9816dbf22c527def26c1e65ad711a8e85de4d2bb91dcc2dd4f16004f3a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23bc7b8af9ff02c7167a08238ab1deeba7f8978364254d7f66b32d9defff1a4a",
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

Occurrence: `result:ae9503ed-c284-b480-0ea4-96e75d6550a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.IsSimpleRingTfae.Variant81bd370e20d4326d5691b2894b96cd39314b891831ceff729d155b878bbf27cf.IsSemisimpleRing.moduleEnd : IsSemisimpleRing (Module.End R M) :=
  have ⟨_, _, _, _, _, ⟨e⟩⟩ := exists_end_ringEquiv_pi_matrix_divisionRing R M
  e.symm.isSemisimpleRing

end IsSemisimpleModule

namespace IsSemisimpleRing

variable (R) [IsSemisimpleRing R]

/-- The **Wedderburn–Artin Theorem**, algebra form: a semisimple algebra is isomorphic to a
product of matrix algebras over the opposite of the endomorphism algebras of its simple modules. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/WedderburnArtin/Varianta0eba9816dbf22c527def26c1e65ad711a8e85de4d2bb91dcc2dd4f16004f3a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/WedderburnArtin/Varianta0eba9816dbf22c527def26c1e65ad711a8e85de4d2bb91dcc2dd4f16004f3a6.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab359f133252d77bc7c9bf54e0f31a48529e29c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
