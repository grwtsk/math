import Lake

open System Lake DSL

package OAI where
  version := v!"0.1.0"
  fixedToolchain := true
  leanOptions := #[⟨`autoImplicit, false⟩]

require «fixed-point-theorems» from git
  "https://github.com/harfe/fixed-point-theorems-lean4.git" @ "770940ddf9878cf61952ed53d910b92bca841838"
require Zeta3Irrational from git
  "https://github.com/ahhwuhu/zeta_3_irrational.git" @ "e8785315a01c8fbcddaa0fc03b3c8b29a61bc1f1"
require «rellich-kondrachov» from git
  "https://github.com/abenenson/rellich-kondrachov.git" @ "70f85d4c1bf99c6e7d61e8be4daa6f3664d08d23"
require carleson from git
  "https://github.com/fpvandoorn/carleson.git" @ "306ae5b29300771aece1aa39f0a939183cc59486"
require StrongPNT from git
  "https://github.com/math-inc/strongpnt.git" @ "2f5835c322314f55f1026ec2f139d704b7c45c69"
require AbsorptionCutoff from git
  "https://github.com/BennyAvelin/AbsorptionCutoff.git" @ "41c45c6d72e979419e46224bb7b4be5cee31f2b5"
require AINTLIB from git
  "https://github.com/CBirkbeck/AINTLIB.git" @ "160e446617a2168c34c95bbe7a76c4105b392434"
require ClassFieldTheory from git
  "https://github.com/n-yamaguchi-0729/ClassFieldTheory.git" @ "2eb22d6485af45f29c5219de6c49f196a61c4f49"
require «schoenflies-lean» from git
  "https://github.com/alonamaloh/schoenflies-lean" @ "05a43d29cde026618777db3d4e4316204ccca237"

require SphereEversion from git
  "https://github.com/leanprover-community/sphere-eversion.git" @ "9c53f91e2a281199163ecea04dc4976cb79e2076"

require TauCeti from git
  "https://github.com/TauCetiProject/TauCeti.git" @ "3bed7e37f3c504a99e8c07e9f309540812a7aa90"

require gromov from git
  "https://github.com/Aaron1011/gromov.git" @ "8db79f13cf211b570e3116301d91379fbc01cf3e"

require «iut» from git
  "https://github.com/lana-agents/iut.git" @ "d9465c111ec4073709f67e9fccec7e3eb374a816"

require «tate-curves-theta» from git
  "https://github.com/lana-agents/tate-curves-theta.git" @ "ca6c2279d3cea0690cdb01328e727118d5485d68"

require «genl» from git
  "https://github.com/lana-agents/genl.git" @ "ea2846c877d1e16d8f0b911a5fed07f5ee69eaaf"

require «heights» from git
  "https://github.com/lana-agents/heights.git" @ "721496ca4c158e511d25d8ccf6bfe8503eda73c1"

require «pi1» from git
  "https://github.com/lana-agents/pi1.git" @ "ca7def953193f861a462aa0831eec8f0a31ff69f"

require «orbicurve-cores» from git
  "https://github.com/lana-agents/orbicurve-cores.git" @ "61616dcd77fbe45c083a8ebfa7cc80728f86e841"

require «oka» from git
  "https://github.com/lana-agents/oka.git" @ "75dcdc3faadd10b986afb9283e89902bcdddecd4"

require «tempered-fundamental-groups» from git
  "https://github.com/lana-agents/tempered-fundamental-groups.git" @ "2006651f52b70ea2fe3388238c7d9db14d21748f"

require «elliptic-curves» from git
  "https://github.com/lana-agents/elliptic-curves.git" @ "bebec3fc9f2602e81c83e5236789572a541c85fb"

require «formal-schemes» from git
  "https://github.com/lana-agents/formal-schemes.git" @ "51aa935079537bf4dc580751a6e70727fb23ca93"

require «belyi» from git
  "https://github.com/lana-agents/belyi.git" @ "9ce4d3f793d3bc831f2fc7214b7dbad90ea012d8"

-- Declare shared dependencies last: Lake resolves later requirements first.
-- These pins override the older versions in the upstream packages' manifests.
require PrimeNumberTheoremAnd from git
  "https://github.com/AlexKontorovich/PrimeNumberTheoremAnd.git" @ "c39a751132c88b6e8080b74c74023fd95b3d8be0"
require leancert from git
  "https://github.com/alerad/leancert.git" @ "7f91b6eb3567437f6cfac03ed279706603ee22f4"
require LeanArchitect from git
  "https://github.com/hanwenzhu/LeanArchitect.git" @ "468e8f58fb4ad6e6ad672a08da6d0d0531e95a97"
require PrimeCert from git
  "https://github.com/b-mehta/PrimeCert.git" @ "0803c2f6bd289c09704c7d352bb8fcf770cbb9b2"
require «doc-gen4» from git
  "https://github.com/leanprover/doc-gen4.git" @ "953c8992d174b4e56955e01e101d46668c68f2bb"
require checkdecls from git
  "https://github.com/PatrickMassot/checkdecls.git" @ "3d425859e73fcfbef85b9638c2a91708ef4a22d4"
require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "d13f23b723b8a846827a245b89c10fc7d3f11612"

@[default_target] lean_lib OAI where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"

lean_lib OAI.Analysis where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Analysis]
  globs := #[`OAI.Analysis.+]
lean_lib OAI.Algebra where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Algebra]
  globs := #[`OAI.Algebra.+]
lean_lib OAI.AlgebraicGeometry where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.AlgebraicGeometry]
  globs := #[`OAI.AlgebraicGeometry.+]
lean_lib OAI.AlgebraicTopology where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.AlgebraicTopology]
  globs := #[`OAI.AlgebraicTopology.+]
lean_lib OAI.Geometry where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Geometry]
  globs := #[`OAI.Geometry.+]
lean_lib OAI.Probability where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Probability]
  globs := #[`OAI.Probability.+]
lean_lib OAI.Combinatorics where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Combinatorics]
  globs := #[`OAI.Combinatorics.+]
lean_lib ComparatorChallenges where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  globs := #[`ComparatorChallenges.+]
lean_lib OAI.InformationTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.InformationTheory]
  globs := #[`OAI.InformationTheory.+]
lean_lib OAI.ModelTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.ModelTheory]
  globs := #[`OAI.ModelTheory.+]
lean_lib OAI.RepresentationTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.RepresentationTheory]
  globs := #[`OAI.RepresentationTheory.+]
lean_lib OAI.NumberTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.NumberTheory]
  globs := #[`OAI.NumberTheory.+]
lean_lib OAI.MeasureTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.MeasureTheory]
  globs := #[`OAI.MeasureTheory.+]
lean_lib OAI.GroupTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.GroupTheory]
  globs := #[`OAI.GroupTheory.+]
lean_lib OAI.LinearAlgebra where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.LinearAlgebra]
  globs := #[`OAI.LinearAlgebra.+]
lean_lib OAI.RingTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.RingTheory]
  globs := #[`OAI.RingTheory.+]
lean_lib OAI.Computability where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Computability]
  globs := #[`OAI.Computability.+]
lean_lib OAI.Dynamics where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Dynamics]
  globs := #[`OAI.Dynamics.+]
lean_lib OAI.CategoryTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.CategoryTheory]
  globs := #[`OAI.CategoryTheory.+]
lean_lib OAI.MathematicalPhysics where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.MathematicalPhysics]
  globs := #[`OAI.MathematicalPhysics.+]
lean_lib OAI.Topology where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Topology]
  globs := #[`OAI.Topology.+]
lean_lib OAI.Optimization where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.Optimization]
  globs := #[`OAI.Optimization.+]
lean_lib OAI.GameTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.GameTheory]
  globs := #[`OAI.GameTheory.+]
lean_lib OAI.SetTheory where
  srcDir := "/Users/local/Desktop/NoeaaeueFormal/artifacts/lean-corpus-proof-start-20261007/relocation/originals/bb8205eed21376e8bf270b1f455c2a91d452560642845d9e42fde788deee8a51"
  roots := #[`OAI.SetTheory]
  globs := #[`OAI.SetTheory.+]

/-
Local attribution: grwtsk contributors.
Artifact-boundary split of grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec
Source: GRWTSK/MeasureAndIntegration/LakefileEdition42.lean
Git blob: a22b4af9f004a0f81d60b33ca9759520eab35699
Retained isolated package, exact dependency pins and library/build declarations only.
Git clone/checkout/apply bootstrap and update hooks are maintained in the Noe driver.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Historical provenance comments describe the original source, not verification of these edited bytes.
-/
