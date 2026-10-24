# conductor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:188d07899dbda01fd27043819bd747429bcc43f0bf5f734c53ce40bbbaddfff4",
  "kind": "def",
  "lexical_name": "conductor",
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
  "slug": "conductor--fd3b11fa1e7e8f15469a4cb9",
  "source": {
    "blob": "12577f8b7e47b53b0c01c02c003ea6e02db78377",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 63,
    "path": "GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd3b11fa1e7e8f15469a4cb96084c17845cbeb4b9e707f294c0ba7f1f0db52da",
  "verification": {
    "reference": "docs/verification/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:188d07899dbda01fd27043819bd747429bcc43f0bf5f734c53ce40bbbaddfff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def conductor (x : S) : Ideal S where
  carrier := {a | ∀ b : S, a * b ∈ R<x>}
  zero_mem' b := by simpa only [zero_mul] using Subalgebra.zero_mem _
  add_mem' ha hb c := by simpa only [add_mul] using Subalgebra.add_mem _ (ha c) (hb c)
  smul_mem' c a ha b := by simpa only [smul_eq_mul, mul_left_comm, mul_assoc] using ha (c * b)

variable {R} {x : S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12577f8b7e47b53b0c01c02c003ea6e02db78377` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
