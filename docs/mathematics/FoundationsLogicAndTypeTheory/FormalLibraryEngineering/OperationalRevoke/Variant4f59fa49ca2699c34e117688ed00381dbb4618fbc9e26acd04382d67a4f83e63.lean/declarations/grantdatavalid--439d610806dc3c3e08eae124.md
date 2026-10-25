# GrantDataValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0cd1c4ad031a85155979bd0c4ff746ec066d1ce340542c1107ebe506fe29042",
  "kind": "def",
  "lexical_name": "GrantDataValid",
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
  "slug": "grantdatavalid--439d610806dc3c3e08eae124",
  "source": {
    "blob": "88fac1787917981abc37a2801379433e08cb65c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 318,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:439d610806dc3c3e08eae12420975f46b1632ec069ba0a5b48f35c864760f89e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0cd1c4ad031a85155979bd0c4ff746ec066d1ce340542c1107ebe506fe29042`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GrantDataValid (mode : Mode) (data : GrantData) : Prop :=
  match mode, data with
  | .effect, .effect parent => ∀ id ∈ parent, TokenValid id
  | .delegation, .delegated issuer parent depth delegates
  | .amendment, .delegated issuer parent depth delegates =>
    TokenValid issuer ∧ (∀ key ∈ parent, KeyValid key) ∧ depth ≤ 3 ∧
      delegates.length ≤ 4 ∧ (∀ delegate ∈ delegates, TokenValid delegate) ∧
      delegates.Pairwise (· < ·) ∧ (depth = 0 → delegates = [])
  | _, _ => False

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fac1787917981abc37a2801379433e08cb65c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
