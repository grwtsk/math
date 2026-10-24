# recTopCoe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8cdd58523c143fb4e8b40484cdf72415e0fb8a710503d709acf47c43a03b2dbd",
  "kind": "def",
  "lexical_name": "recTopCoe",
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
  "slug": "rectopcoe--6a48f9feafae2437af10f755",
  "source": {
    "blob": "6ab2da2be12a20fcb3991d5e4195c47923ef1a68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 129,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a48f9feafae2437af10f7555185ddb0123d039ff91632f94b74f120b9d333b3",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8cdd58523c143fb4e8b40484cdf72415e0fb8a710503d709acf47c43a03b2dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recTopCoe {C : ℕ∞ → Sort*} (h₁ : C ⊤) (h₂ : ∀ a : ℕ, C a) : ∀ n : ℕ∞, C n
| none => h₁
| Option.some a => h₂ a

--Porting note: new theorem copied from `WithTop`
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant49ee4b6b762ebddf06a8f2b42ae8156a6d79d6d607326c004fff0d0c4e2c2008.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ab2da2be12a20fcb3991d5e4195c47923ef1a68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
