# Admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65b9677a56f1109935a7a44ce3dc8ee7f1468710fa2433589b84d7df4aa461d9",
  "kind": "def",
  "lexical_name": "Admissible",
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
  "slug": "admissible--9f2a4c7526bbc47ed5c0e5c2",
  "source": {
    "blob": "357213696956794a5680bc76edabe53bf0376c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 123,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f2a4c7526bbc47ed5c0e5c259178c309cbc235cee5367eca2054288340ea088",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65b9677a56f1109935a7a44ce3dc8ee7f1468710fa2433589b84d7df4aa461d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Admissible {Γ : List (Expr S)} (e : J.Env Γ) : Prop :=
  ∀ i B, Lookup Γ i B →
    (Profile P Γ B ∈ C → J.images e i ∈ J.R B e) ∧
    (Profile P Γ B ∈ U → StronglyNormalizing (J.images e i)) ∧
    (Profile P Γ B ∉ U → Profile P Γ B ∉ C →
      J.images e i ∈ Ground Ω (B.subst (J.images e)).normalForm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Interface/Variant324403033c1186530861971b8badf4f870edb2d4d1d5b46a5b52fb313d37041d.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357213696956794a5680bc76edabe53bf0376c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
