# unitPrismaticEnvelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd360a61640dc32012fe7fb88814ba1f52d406c6de6644bd78788cbbc7d3ef5b",
  "kind": "def",
  "lexical_name": "unitPrismaticEnvelope",
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
  "slug": "unitprismaticenvelope--6d37888e5a78d7af3164f23a",
  "source": {
    "blob": "c6fb1fa28c22250ca908316eddfa7fd8d11967c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 203,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variantc0c8ff1cb090770c4714ad5a633ebc856c16cb2e9eb6b4f72b0f932afdfdb8a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6d37888e5a78d7af3164f23a3819fcb719727dbd4013f9d9ad949fcf3095cae3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variantc0c8ff1cb090770c4714ad5a633ebc856c16cb2e9eb6b4f72b0f932afdfdb8a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd360a61640dc32012fe7fb88814ba1f52d406c6de6644bd78788cbbc7d3ef5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitPrismaticEnvelope
    (p : Nat) :
    PrismaticEnvelope (unitPrism p) where
  idealLabel := "unit ideal"
  envelopePair := {
    A := (unitPrism p).A
    I := (unitPrism p).I
    boundary := ["Unit envelope δ-pair."]
  }
  universalProperty := True
  universalPropertyCertified := trivial
  p_I_completelyFlat := True
  pICompletelyFlatCertified := trivial
  boundary := [
    "Unit prismatic-envelope example.",
    "This is a toy certificate, not a nontrivial prismatic-envelope theorem."
  ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variantc0c8ff1cb090770c4714ad5a633ebc856c16cb2e9eb6b4f72b0f932afdfdb8a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Envelope/Variantc0c8ff1cb090770c4714ad5a633ebc856c16cb2e9eb6b4f72b0f932afdfdb8a9.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6fb1fa28c22250ca908316eddfa7fd8d11967c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
