# Minimal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ebd5242935d93cdf90dc8a331a85dd0d19cd5dba5f86a1b48c671f37f82b115",
  "kind": "def",
  "lexical_name": "Minimal",
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
  "slug": "minimal--b9a7f73f3acbaae48b8c8896",
  "source": {
    "blob": "a5d02812a54e9265ede7657a1ab72565b0c817d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 66,
    "path": "GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9a7f73f3acbaae48b8c8896a3a64babfd948e5f8c2b5c38986b034ee203ff23",
  "verification": {
    "reference": "docs/verification/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ebd5242935d93cdf90dc8a331a85dd0d19cd5dba5f86a1b48c671f37f82b115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Minimal (a b c : ℤ) : Prop :=
  Fermat42 a b c ∧ ∀ a1 b1 c1 : ℤ, Fermat42 a1 b1 c1 → Int.natAbs c ≤ Int.natAbs c1
#align fermat_42.minimal Fermat42.Minimal

/-- if we have a solution to `a ^ 4 + b ^ 4 = c ^ 2` then there must be a minimal one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/DiophantineEquations/Fermat4/Variantf8a6223e8078d63d677f5e96e6dc21c6c72f238fb1ef79fe93bd7a82434fb594.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5d02812a54e9265ede7657a1ab72565b0c817d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
