# LiftpPreservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28438b1eb852b3a44e836d936cb6f352a0afcf022cce265ad31cb333f8b5c807",
  "kind": "def",
  "lexical_name": "LiftpPreservation",
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
  "slug": "liftppreservation--99ed70bbc02f644e8c219ed8",
  "source": {
    "blob": "c77a2be70418b9b5a53bfba478b046466f63b4db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 674,
    "line": 670,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99ed70bbc02f644e8c219ed89e3cdfbff6ed4ffc92b97ffb87fbc7ce3a59bcae",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28438b1eb852b3a44e836d936cb6f352a0afcf022cce265ad31cb333f8b5c807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–674.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LiftpPreservation : Prop :=
  ∀ ⦃α⦄ (p : α → Prop) (x : q.P.Obj α), Liftp p (abs x) ↔ Liftp p x
#align qpf.liftp_preservation Qpf.LiftpPreservation

/-- does `abs` preserve `supp`? -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant06d81972df0587f0e5aeda5ec223c5cb21881a31009ddf190e0d4459a5c096e1.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c77a2be70418b9b5a53bfba478b046466f63b4db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
