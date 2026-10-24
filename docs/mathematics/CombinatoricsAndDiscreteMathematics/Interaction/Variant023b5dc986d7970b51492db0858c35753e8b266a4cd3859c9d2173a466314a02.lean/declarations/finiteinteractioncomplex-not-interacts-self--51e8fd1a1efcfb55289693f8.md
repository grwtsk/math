# FiniteInteractionComplex.not_interacts_self

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33db396e-5763-5bf1-1c64-91b0d5b03ebc",
  "kind": "theorem",
  "lexical_name": "FiniteInteractionComplex.not_interacts_self",
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
  "slug": "finiteinteractioncomplex-not-interacts-self--51e8fd1a1efcfb55289693f8",
  "source": {
    "blob": "094f2efd54e537b8f2d8bcd239fb0723fb68c688",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51e8fd1a1efcfb55289693f82778bd22de4967a3606a9209c4677b710232b82f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33db396e-5763-5bf1-1c64-91b0d5b03ebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteInteractionComplex.not_interacts_self {N : ℕ}
    (complex : FiniteInteractionComplex N) (atom : PacketAtom N) :
    ¬ complex.Interacts atom atom := by
  intro h
  have hthreshold := h.2.2
  rw [complex.edgeWeight_self] at hthreshold
  linarith [complex.interactionThreshold_pos]

/-! ## Finite simplex closure and a separate geometric realization predicate -/

/-- A finite abstract interaction nerve.  Downward closure is part of the
data, so this is stronger than a threshold graph while remaining entirely
finite.  Empty simplices are omitted by convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Interaction/Variant023b5dc986d7970b51492db0858c35753e8b266a4cd3859c9d2173a466314a02.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `094f2efd54e537b8f2d8bcd239fb0723fb68c688` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
