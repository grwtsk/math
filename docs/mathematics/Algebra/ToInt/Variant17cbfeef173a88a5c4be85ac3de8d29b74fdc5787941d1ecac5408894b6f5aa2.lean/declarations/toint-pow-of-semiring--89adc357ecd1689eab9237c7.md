# ToInt.pow_of_semiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4022f1051a0aea99858af9976dbf9b8c96d45018a8c5c01bf021e35bf9ae52e0",
  "kind": "def",
  "lexical_name": "ToInt.pow_of_semiring",
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
  "slug": "toint-pow-of-semiring--89adc357ecd1689eab9237c7",
  "source": {
    "blob": "b15fec71b53fabe49c2d998200f8b7e5ada29018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 40,
    "line": 28,
    "path": "GRWTSK/Algebra/ToInt/Variant17cbfeef173a88a5c4be85ac3de8d29b74fdc5787941d1ecac5408894b6f5aa2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89adc357ecd1689eab9237c7e27e7750eeb28dde7cb8d344e6ce128c4a668ea2",
  "verification": {
    "reference": "docs/verification/Algebra/ToInt/Variant17cbfeef173a88a5c4be85ac3de8d29b74fdc5787941d1ecac5408894b6f5aa2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4022f1051a0aea99858af9976dbf9b8c96d45018a8c5c01bf021e35bf9ae52e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–40.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ToInt.pow_of_semiring [Semiring α] [ToInt α I] [ToInt.OfNat α I] [ToInt.Mul α I]
    (h₁ : I.isFinite) : ToInt.Pow α I where
  toInt_pow x n := by
    induction n with
    | zero =>
      rw [Semiring.pow_zero, ToInt.OfNat.toInt_ofNat, Int.pow_zero]
      rfl
    | succ n ih =>
      rw [Semiring.pow_succ, ToInt.Mul.toInt_mul]
      conv => lhs; rw [← ToInt.wrap_toInt I x]
      rw [ih, ← I.wrap_mul h₁, Int.pow_succ]

end Lean.Grind
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ToInt/Variant17cbfeef173a88a5c4be85ac3de8d29b74fdc5787941d1ecac5408894b6f5aa2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ToInt/Variant17cbfeef173a88a5c4be85ac3de8d29b74fdc5787941d1ecac5408894b6f5aa2.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b15fec71b53fabe49c2d998200f8b7e5ada29018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
