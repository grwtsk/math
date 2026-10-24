# bertrandProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:463dd3533c53c514ebd1e615a2304e824a72be4d544e030108fc0e4450a423e2",
  "kind": "def",
  "lexical_name": "bertrandProfile",
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
  "slug": "bertrandprofile--50ea114232bb54d2433daa1e",
  "source": {
    "blob": "27e971ff636073c568e8059e2873d6fedeaf51e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 15,
    "path": "GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50ea114232bb54d2433daa1e172b86369c9e31624add04be471d963d66c49b1a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:463dd3533c53c514ebd1e615a2304e824a72be4d544e030108fc0e4450a423e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bertrandProfile : IntervalProfile Nat Nat where
  version := ⟨"https://w3id.org/reflexive", "bertrand-profile", "1.0.0", "sha256:bertrand-profile-v1"⟩
  sourceTheorem := ⟨"https://w3id.org/reflexive", "bertrand-theorem", "1.0.0", "sha256:bertrand-theorem-v1"⟩
  domainVersion := ⟨"https://w3id.org/reflexive", "bertrand-domain", "1.0.0", "sha256:bertrand-domain-v1"⟩
  lowerVersion := ⟨"https://w3id.org/reflexive", "bertrand-lower", "1.0.0", "sha256:bertrand-lower-v1"⟩
  upperVersion := ⟨"https://w3id.org/reflexive", "bertrand-upper", "1.0.0", "sha256:bertrand-upper-v1"⟩
  assumptionSet := ⟨"https://w3id.org/reflexive", "bertrand-assumptions", "1.0.0", "sha256:bertrand-assumptions-v1"⟩
  orientation := .Forward
  sourceNotation := "n < q < 2*n"
  domain := fun n => 1 < n
  lower := fun n => n
  upper := fun n => 2 * n
  lowerMode := .Open
  upperMode := .Open
  witnessQualifies := Nat.Prime
  order := Nat.lt

/-- Distinct domain-restricted profile for prime source inputs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Bertrand/Variant600e259115a63f0eb9c6ac1db6650413e54fe312515f56e1386fb359566dda49.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27e971ff636073c568e8059e2873d6fedeaf51e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
