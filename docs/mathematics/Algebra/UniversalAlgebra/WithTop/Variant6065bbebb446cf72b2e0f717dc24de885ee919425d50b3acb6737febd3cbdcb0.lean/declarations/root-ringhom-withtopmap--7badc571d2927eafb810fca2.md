# _root_.RingHom.withTopMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3d9a7b781920c59b8b9b7b852832ae0f7a8e6070f2265cb0cf71c41991d0336",
  "kind": "def",
  "lexical_name": "_root_.RingHom.withTopMap",
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
  "slug": "root-ringhom-withtopmap--7badc571d2927eafb810fca2",
  "source": {
    "blob": "bd1c9b0b3ac42b9b20a837d6e7397998ec386bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 212,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7badc571d2927eafb810fca2ea9d4c8c9fc315273c92072ee5ca805f56a2c961",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3d9a7b781920c59b8b9b7b852832ae0f7a8e6070f2265cb0cf71c41991d0336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def _root_.RingHom.withTopMap {R S : Type*} [CanonicallyOrderedCommSemiring R]
    [DecidableEq R] [Nontrivial R] [CanonicallyOrderedCommSemiring S] [DecidableEq S] [Nontrivial S]
    (f : R →+* S) (hf : Function.Injective f) : WithTop R →+* WithTop S :=
  {MonoidWithZeroHom.withTopMap f.toMonoidWithZeroHom hf, f.toAddMonoidHom.withTopMap with}
#align ring_hom.with_top_map RingHom.withTopMap

end WithTop

namespace WithBot

variable [DecidableEq α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant6065bbebb446cf72b2e0f717dc24de885ee919425d50b3acb6737febd3cbdcb0.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd1c9b0b3ac42b9b20a837d6e7397998ec386bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
