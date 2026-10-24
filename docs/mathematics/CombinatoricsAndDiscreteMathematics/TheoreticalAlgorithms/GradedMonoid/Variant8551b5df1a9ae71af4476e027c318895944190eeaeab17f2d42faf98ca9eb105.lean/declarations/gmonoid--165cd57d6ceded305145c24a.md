# GMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:61ef2a832d15da90fd4784074b20259d4c27bcae8a36b96a5896d323b86c7204",
  "kind": "class",
  "lexical_name": "GMonoid",
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
  "slug": "gmonoid--165cd57d6ceded305145c24a",
  "source": {
    "blob": "d6a6a531f464a5d7c9d0e0bebeec478d0d7dd556",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:165cd57d6ceded305145c24ad80ac489d3eb1d909acd661c720d8db67618b8b0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:61ef2a832d15da90fd4784074b20259d4c27bcae8a36b96a5896d323b86c7204`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class GMonoid [AddMonoid ι] extends GMul A, GOne A where
  /-- Multiplication by `one` on the left is the identity -/
  one_mul (a : GradedMonoid A) : 1 * a = a
  /-- Multiplication by `one` on the right is the identity -/
  mul_one (a : GradedMonoid A) : a * 1 = a
  /-- Multiplication is associative -/
  mul_assoc (a b c : GradedMonoid A) : a * b * c = a * (b * c)
  /-- Optional field to allow definitional control of natural powers -/
  gnpow : ∀ (n : ℕ) {i}, A i → A (n • i) := GMonoid.gnpowRec
  /-- The zeroth power will yield 1 -/
  gnpow_zero' : ∀ a : GradedMonoid A, GradedMonoid.mk _ (gnpow 0 a.snd) = 1 := by
    apply_gmonoid_gnpowRec_zero_tac
  /-- Successor powers behave as expected -/
  gnpow_succ' :
    ∀ (n : ℕ) (a : GradedMonoid A),
      (GradedMonoid.mk _ <| gnpow n.succ a.snd) = a * ⟨_, gnpow n a.snd⟩ := by
    apply_gmonoid_gnpowRec_succ_tac
#align graded_monoid.gmonoid GradedMonoid.GMonoid

/-- `GMonoid` implies a `Monoid (GradedMonoid A)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/GradedMonoid/Variant8551b5df1a9ae71af4476e027c318895944190eeaeab17f2d42faf98ca9eb105.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6a6a531f464a5d7c9d0e0bebeec478d0d7dd556` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
