# positiveOccurrenceWindowEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7be3b807e89011fe4e5ddd4ab354e4a3527cccea3434ca806e34b12cecefc8a",
  "kind": "def",
  "lexical_name": "positiveOccurrenceWindowEquiv",
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
  "slug": "positiveoccurrencewindowequiv--27efbd89b20e4a11b00ac3ad",
  "source": {
    "blob": "59c091b485a026eb1dfce01bf8f5cb5feae35f5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 28,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27efbd89b20e4a11b00ac3ad637b23a047df02647e31322bd9a0239e41d59d96",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7be3b807e89011fe4e5ddd4ab354e4a3527cccea3434ca806e34b12cecefc8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def positiveOccurrenceWindowEquiv (t : ℝ) :
    PositiveOccurrenceWindow t ≃ PositiveCountFibres t where
  toFun o := ⟨⟨o.val.1.val, by
    change Zeta23.IsNontrivialZero o.val.1.val ∧
      0 < o.val.1.val.im ∧ o.val.1.val.im ≤ t
    refine ⟨o.val.1.property, ?_⟩
    simpa only [shiftedValue, Complex.sub_im, Complex.div_ofNat_im, Complex.one_im,
      zero_div, sub_zero] using o.property⟩, o.val.2⟩
  invFun o := ⟨⟨⟨o.1.val, o.1.property.1⟩, o.2⟩, by
    simpa only [shiftedValue, Complex.sub_im, Complex.div_ofNat_im, Complex.one_im,
      zero_div, sub_zero] using o.1.property.2⟩
  left_inv o := by rcases o with ⟨⟨p, i⟩, h⟩; rfl
  right_inv o := by rcases o with ⟨p, i⟩; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CountOccurrences/Variant32322a5e0bff6f818c2cab9e1671fe8cbc4e4c9d49855fee4851a901db900795.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59c091b485a026eb1dfce01bf8f5cb5feae35f5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
