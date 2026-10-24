# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b00d74ee2076c5373f3c4d20c37b19c3250700e5a3d0989526bd6e1635e5b7a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--aa699ccb017dbd4679c4970d",
  "source": {
    "blob": "f1d27f7e53fb296a43d932e7b277c319729efcb0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 478,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aa699ccb017dbd4679c4970db86b2f85f8382b208ef96e619557abcdf940d75c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b00d74ee2076c5373f3c4d20c37b19c3250700e5a3d0989526bd6e1635e5b7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 478–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (a1 a2 a3 b1 b2 b3 c1 c2 c3 d1 d2 d3 : ℕ)
    (h1 : a1 + a2 + a3 = b1 + b2 + b3)
    (h2 : c1 + c2 + c3 = d1 + d2 + d3) :
    a1 * c1 + a2 * c1 + a3 * c1 + a1 * c2 + a2 * c2 + a3 * c2 + a1 * c3 + a2 * c3 + a3 * c3 =
    b1 * d1 + b2 * d1 + b3 * d1 + b1 * d2 + b2 * d2 + b3 * d2 + b1 * d3 + b2 * d3 + b3 * d3 := by
  nlinarith --(config := { oracle := some .fourierMotzkin })

-- This should not be slower than the example below with the Fourier-Motzkin oracle
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant8dd6bc9d401c1ad573b453b10bbef53222c33f082828840c82e599f9e8f73521.lean#L478).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d27f7e53fb296a43d932e7b277c319729efcb0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
