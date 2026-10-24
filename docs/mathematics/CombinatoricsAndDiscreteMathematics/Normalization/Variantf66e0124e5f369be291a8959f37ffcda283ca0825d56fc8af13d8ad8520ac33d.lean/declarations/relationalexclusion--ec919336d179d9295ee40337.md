# RelationalExclusion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e3d7d336d97e41ffce99f7235edbd1ce1a52740cbdbe508686ca1259a2325a6",
  "kind": "def",
  "lexical_name": "RelationalExclusion",
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
  "slug": "relationalexclusion--ec919336d179d9295ee40337",
  "source": {
    "blob": "b045f2d39be538622d72c8d4cb772779bcc900fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec919336d179d9295ee403370895a7f2d33611927fa5d33c89d70f1abccc38e5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e3d7d336d97e41ffce99f7235edbd1ce1a52740cbdbe508686ca1259a2325a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RelationalExclusion {S : Type u} (P : Specification S) : Prop :=
  ∀ C, IsComponent (PrimaryEdge P) C →
    (∃ I ∈ C, SignedPath (PrimaryEdge P) I I true) →
    (∃ I J K, ProfileTriple P I J K ∧ I ∈ C ∧ J ∈ C ∧ K ∈ C) →
    ¬ ForbiddenConfiguration P C

open Classical in
/-- All three actual candidate models are selected using the exact source case
split. The exclusion interface is isolated, not hidden in a candidate law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Normalization/Variantf66e0124e5f369be291a8959f37ffcda283ca0825d56fc8af13d8ad8520ac33d.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b045f2d39be538622d72c8d4cb772779bcc900fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
